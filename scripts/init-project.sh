#!/usr/bin/env bash
#
# init-project.sh — install AI Engineering OS project-memory templates into a project.
#
# Copies AGENTS.md, PROJECT.md, DECISIONS.md, LESSONS.md (and optionally CLAUDE.md)
# into a target project, wires in a bridge back to this OS, and prints next steps.
#
# Safe by default: never overwrites an existing file unless --force is given.
#
# Usage:
#   scripts/init-project.sh [target-dir] [--force] [--with-claude] [--help]
#
# Examples:
#   scripts/init-project.sh                 # init current directory
#   scripts/init-project.sh ~/code/myapp    # init a specific project
#   scripts/init-project.sh . --with-claude # also add CLAUDE.md for Claude Code

set -euo pipefail

# --- parse args ---------------------------------------------------------------
TARGET_DIR="."
FORCE=0
WITH_CLAUDE=0

for arg in "$@"; do
  case "$arg" in
    --force)       FORCE=1 ;;
    --with-claude) WITH_CLAUDE=1 ;;
    -h|--help)
      grep '^#' "$0" | sed 's/^# \{0,1\}//; 1d' | sed '/^!/d'
      exit 0
      ;;
    -*)
      echo "Unknown option: $arg" >&2
      echo "Run with --help for usage." >&2
      exit 2
      ;;
    *) TARGET_DIR="$arg" ;;
  esac
done

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TEMPLATES="$ROOT_DIR/templates"

if [[ ! -d "$TARGET_DIR" ]]; then
  echo "Target directory does not exist: $TARGET_DIR" >&2
  exit 1
fi
TARGET_DIR="$(cd "$TARGET_DIR" && pwd)"

echo "AI Engineering OS  ->  installing project memory into: $TARGET_DIR"
echo

# --- copy helper: refuses to overwrite unless --force -------------------------
installed=()
skipped=()

copy_template() {
  local src="$1" dest="$2"
  if [[ -e "$dest" && "$FORCE" -ne 1 ]]; then
    skipped+=("$(basename "$dest")")
    return
  fi
  cp "$src" "$dest"
  # Point the bridge at this OS location.
  if grep -q "OS_PATH" "$dest" 2>/dev/null; then
    # portable in-place sed (macOS + GNU)
    sed -i.bak "s|OS_PATH|$ROOT_DIR|g" "$dest" && rm -f "$dest.bak"
  fi
  installed+=("$(basename "$dest")")
}

copy_template "$TEMPLATES/AGENTS.template.md"    "$TARGET_DIR/AGENTS.md"
copy_template "$TEMPLATES/PROJECT.template.md"   "$TARGET_DIR/PROJECT.md"
copy_template "$TEMPLATES/DECISIONS.template.md" "$TARGET_DIR/DECISIONS.md"
copy_template "$TEMPLATES/LESSONS.template.md"   "$TARGET_DIR/LESSONS.md"

if [[ "$WITH_CLAUDE" -eq 1 ]]; then
  copy_template "$TEMPLATES/CLAUDE.template.md" "$TARGET_DIR/CLAUDE.md"
fi

# --- create docs scaffolding (only if absent) --------------------------------
for d in "docs/planning" "docs/architecture"; do
  if [[ ! -d "$TARGET_DIR/$d" ]]; then
    mkdir -p "$TARGET_DIR/$d"
    echo "  created $d/"
  fi
done

# --- report -------------------------------------------------------------------
echo
if [[ ${#installed[@]} -gt 0 ]]; then
  echo "Installed: ${installed[*]}"
fi
if [[ ${#skipped[@]} -gt 0 ]]; then
  echo "Skipped (already exist, use --force to overwrite): ${skipped[*]}"
fi

# --- git awareness ------------------------------------------------------------
echo
if git -C "$TARGET_DIR" rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "This is a git repo. Review, then commit:"
  echo "  git -C \"$TARGET_DIR\" add AGENTS.md PROJECT.md DECISIONS.md LESSONS.md docs"
  echo "  git -C \"$TARGET_DIR\" commit -m \"Add AI Engineering OS project memory\""
else
  echo "Not a git repo. Consider: git -C \"$TARGET_DIR\" init"
fi

# --- next steps ---------------------------------------------------------------
cat <<EOF

Next steps:
  1. Fill in AGENTS.md (stack, commands, architecture) and PROJECT.md (mission, scope).
  2. Start a session by pointing your agent at:
       $ROOT_DIR/START-HERE.md
     The bridge in AGENTS.md already references it, so agents can discover it automatically.
  3. Record decisions in DECISIONS.md and project-specific lessons in LESSONS.md as you go.

Done.
EOF

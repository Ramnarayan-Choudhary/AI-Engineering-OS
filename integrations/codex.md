# Codex Integration

Codex reads `AGENTS.md` from the project root, which is exactly the bridge file this OS installs.

## Setup

From your project directory:

```bash
~/AI-Engineering-OS/scripts/init-project.sh .
```

The generated `AGENTS.md` starts with a bridge block pointing Codex at `~/AI-Engineering-OS/START-HERE.md`, followed by your project facts.

## How it works per session

1. Codex reads `AGENTS.md` and follows the bridge to the OS.
2. It loads the session lifecycle, classifies the task, and plans before large edits.
3. It validates using the commands you documented in `AGENTS.md`.

## Practical tips

- **Global vs. project:** if you use a global Codex `AGENTS.md`, put a one-line pointer to the OS there; keep all project facts in the project's own `AGENTS.md`.
- **Keep commands accurate** in `AGENTS.md` — Codex uses them to test and lint.
- **Point at skills** when a task needs a specific discipline: *"Follow skills/reviewer.md."*
- The OS is the source of reusable standards; `AGENTS.md` is the source of project truth. Don't duplicate one into the other.

## One-line manual start

```text
Read this project's AGENTS.md and the OS it references (START-HERE.md), then follow the session lifecycle.
```

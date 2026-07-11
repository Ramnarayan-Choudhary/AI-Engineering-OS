# Claude Code Integration

Claude Code auto-reads `CLAUDE.md` (and honors `AGENTS.md`) in a project, so it's the smoothest fit for this OS.

## Setup

From your project directory:

```bash
~/AI-Engineering-OS/scripts/init-project.sh . --with-claude
```

This creates `AGENTS.md` (project facts + a bridge to the OS) and `CLAUDE.md` (Claude's per-session first steps). Fill in the stack, commands, and architecture.

## How it works per session

1. Claude reads `CLAUDE.md` automatically on start. `CLAUDE.md`'s first steps tell it to read `AGENTS.md` and the OS at `START-HERE.md`.
2. The bridge in `AGENTS.md` reinforces where the OS lives, so context loads even if you open the repo directly.
3. Claude classifies the task, plans non-trivial work, and validates with the commands you listed.

## Practical tips

- **Put real commands in `CLAUDE.md`** under "Commands Claude should know" — that's what Claude uses to validate, so accuracy here directly improves its "done" claims.
- **Use `core/mistakes.md`** for reusable corrections; Claude reading the OS will pick them up across all projects.
- **Reach for skills explicitly** when useful: *"Use the debugger skill"* or *"act as reviewer"* pulls in that discipline from `skills/`.
- Keep `CLAUDE.md` short — it's read every session. Depth belongs in `AGENTS.md` and the OS.

## One-line manual start (if not using CLAUDE.md)

```text
Read ~/AI-Engineering-OS/START-HERE.md and this project's AGENTS.md, then follow the session lifecycle.
```

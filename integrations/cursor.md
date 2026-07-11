# Cursor Integration

Cursor uses project rules (`.cursor/rules/` or a `.cursorrules` file) plus manually attached context. Wire the OS in through rules and file references.

## Setup

1. Initialize project memory:

   ```bash
   ~/AI-Engineering-OS/scripts/init-project.sh .
   ```

2. Add a short Cursor rule that points at the OS and the project's `AGENTS.md`. Keep the rule small — reference files rather than pasting their contents:

   ```text
   Before non-trivial work, read AGENTS.md and the AI Engineering OS at
   ~/AI-Engineering-OS/START-HERE.md. Classify the task, plan before large
   edits, and validate before claiming done.
   ```

## Practical tips

- **Attach the specific file** you need with `@` — e.g. `@skills/debugger.md` when chasing a bug, `@workflows/plan-before-code.md` when scoping.
- Keep the standing rule short so it doesn't crowd the context window; pull in depth on demand.
- Use `AGENTS.md` as the single source of project truth; don't restate it inside Cursor rules.
- Playbooks (`playbooks/`) work well pasted in when starting a bounded procedure like a review.

## Manual context, when rules aren't enough

Attach: `core/identity.md`, the relevant standard, the task's skill, and the project `AGENTS.md`. Ask Cursor to follow the session lifecycle before proposing edits.

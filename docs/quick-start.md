# Quick Start

Get from clone to a working AI-assisted session in a few minutes.

## 1. Clone somewhere stable

```bash
git clone <your-fork-url> ~/AI-Engineering-OS
```

Keep it at a fixed path — projects will point back to it.

## 2. Make it yours

- Edit `core/identity.md` and `core/goals.md`.
- Optionally create `profiles/<you>/` (copy `profiles/example-developer/` and replace its contents).

See [`personalization.md`](personalization.md).

## 3. Add memory to a real project

From anywhere:

```bash
~/AI-Engineering-OS/scripts/init-project.sh /path/to/your-project
# add --with-claude to also create CLAUDE.md for Claude Code
```

This installs `AGENTS.md`, `PROJECT.md`, `DECISIONS.md`, `LESSONS.md`, a `docs/` scaffold, and a bridge that points the project back at this OS. Then fill in `AGENTS.md` and `PROJECT.md` with real details.

See [`project-memory.md`](project-memory.md).

## 4. Start a session

Paste one line into your agent:

```text
Read the AI Engineering OS at ~/AI-Engineering-OS/START-HERE.md, then this
project's AGENTS.md, and follow the session lifecycle.
```

Because the project's `AGENTS.md` contains the bridge, agents can also discover the OS on their own.

## 5. Improve it over time

- Add reusable mistakes to `core/mistakes.md`.
- Record project decisions in that project's `DECISIONS.md`.
- Keep project-specific lessons in that project's `LESSONS.md` (route reusable ones up to the OS).

That's the whole loop. Everything else is depth you pull in when a task needs it.

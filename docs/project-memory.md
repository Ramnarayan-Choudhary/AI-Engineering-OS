# Project Memory

The single most important boundary in this system: **the global OS holds reusable behavior; each project holds its own facts.** Getting this wrong turns a reusable OS into a tangle of project-specific knowledge that can't be forked or shared.

## What is project memory

The set of files that live *inside a project repo* and give agents its specific context:

| File | Holds | Changes |
|---|---|---|
| `AGENTS.md` | How to work here: stack, commands, architecture, coding rules, risks | Often |
| `PROJECT.md` | Why and what: mission, users, scope, priorities | Slowly |
| `DECISIONS.md` | Why choices were made, with reasoning | Append-only |
| `LESSONS.md` | What this project taught | Append-only |
| `docs/` | Deeper design/planning notes | As needed |

Create them with `scripts/init-project.sh`.

## The routing test

When you learn something, ask: **"Would this be true in a different project?"**

- **No** → it's a project fact → project memory.
- **Yes** → it's reusable behavior → the global OS (`core/`, `standards/`, `workflows/`).

Examples:

| Learning | Where it goes |
|---|---|
| "This app's tests run with `pytest -m 'not slow'`" | Project `AGENTS.md` |
| "We chose Postgres over SQLite because of concurrent writes" | Project `DECISIONS.md` |
| "The auth bug came from trusting the client's timezone" | Project `LESSONS.md` |
| "Agents should always reproduce a bug before fixing it" | Global `skills/debugger.md` / `core/mistakes.md` |
| "Never claim tests passed without running them" | Global `core/mistakes.md` |

## Why the OS must never absorb project facts

- **Forkability.** Someone forks the OS to run their own projects. If it's full of *your* project's commands and decisions, it's useless to them and leaks your context.
- **Reusability.** The OS's value is that it applies everywhere. Every project-specific line dilutes that.
- **Cleanliness.** Project facts change constantly; the OS should be stable. Mixing them makes both harder to maintain.

## Keeping memory healthy

- Update `AGENTS.md` the moment its commands or architecture drift — a stale one misleads every future session.
- Record decisions *with their reasoning* so future sessions don't re-litigate them.
- Route reusable lessons up to the OS; keep project-specific ones local.
- Don't over-log. Memory is signal, not a diary.

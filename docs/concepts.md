# Concepts

The vocabulary of AI Engineering OS. Each concept maps to a directory.

## Global memory (`core/`, `standards/`)

Stable, reusable context about **how you think and how work should be done**. Not tied to any project. This is what makes the OS portable and forkable.

## Project memory (in each project repo)

Repository-specific facts: commands, architecture, decisions, risks. Lives *inside the project*, never in the OS. See [`project-memory.md`](project-memory.md).

## Workflows (`workflows/`)

The **session lifecycle** — the ordered stages every session moves through: load context → classify → plan → implement → validate → reflect. They answer *"what phase am I in and what does it require?"*

## Playbooks (`playbooks/`)

Repeatable **procedures for a category of work** (feature development, bug fixing, code review, MVP planning). They answer *"what are the steps for this kind of task?"*

## Skills (`skills/`)

Reusable **agent roles** (architect, reviewer, debugger, test-writer…). Each defines how to think and what to produce while wearing one hat. They answer *"what discipline does this specific job need?"* This is what makes the repo an operating system rather than a prompt dump.

## Prompts (`prompts/`)

Short, paste-ready instructions. Mostly thin pointers into the deeper workflows and skills.

## Profiles (`profiles/`)

Isolated **personal** working styles. The only place, besides `core/identity.md`/`goals.md`, where personal context belongs. See [`personalization.md`](personalization.md).

## Safety (`security/`)

Rules that prevent agents from damaging data, leaking secrets, or following malicious instructions. **These are never overridden by any other layer.**

## How they relate

```text
workflows = the phases of a session
skills    = the roles you step into within those phases
playbooks = end-to-end procedures that chain skills together
standards = the quality bar all of the above hold to
```

See [`context-hierarchy.md`](context-hierarchy.md) for how these layers combine and what wins on conflict.

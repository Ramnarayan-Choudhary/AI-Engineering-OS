<!--
  AI Engineering OS bridge — see templates/AGENTS-BRIDGE.snippet.md.
  init-project.sh replaces OS_PATH with your actual OS location.
-->

> **This project uses AI Engineering OS for reusable AI-collaboration behavior.**
> Agents: read `OS_PATH/START-HERE.md` first and follow its session lifecycle. This file
> holds project-specific **facts**; the OS holds reusable **behavior**. Project facts win on
> conflict — except safety rules, which always hold.

---

# AGENTS.md

Project-specific context for AI coding agents. Read this before making changes. Keep it current — a stale `AGENTS.md` is worse than none.

## Project purpose

TODO: What does this project do, in two sentences?

## Users

TODO: Who is this for and what problem does it solve for them?

## Tech stack

- Language:
- Framework:
- Database:
- Package manager:
- Deployment:

## Important commands

```bash
# Install dependencies
TODO

# Run dev server
TODO

# Run tests
TODO

# Lint / type check
TODO
```

## Architecture

TODO: Main folders and their responsibilities. Example:

```text
src/
  api/        interface layer
  services/   business logic
  models/     data models
  tests/      tests
```

## Coding rules

DO: follow existing patterns · make focused changes · prefer simple solutions · add tests for important behavior · explain validation.

DON'T: rewrite architecture without approval · add dependencies without explaining why · rename public APIs casually · commit secrets · run destructive commands without approval.

## Testing strategy

TODO: What tests exist, and when should they run?

## Known risks

TODO: Project-specific risks (fragile areas, external dependencies, data hazards).

## Open questions

TODO: Unresolved questions an agent should not guess about.

<!--
  Companion files (created by init-project.sh):
  - PROJECT.md    mission, users, scope, priorities
  - DECISIONS.md  why choices were made (with reasoning)
  - LESSONS.md    what this project taught (route reusable lessons to the OS instead)
-->

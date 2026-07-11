# Local Orchestration

How AI Engineering OS coordinates AI-assisted work **across many projects** on your machine without ever absorbing any single project's details.

## The mental model

```text
~/AI-Engineering-OS   ← the global orchestrator (behavior)
        │  provides: lifecycle, standards, skills, safety, templates
        ▼
  ┌───────────────┬───────────────┬───────────────┐
  project-a       project-b       project-c        ← each keeps its own memory (facts)
  AGENTS.md       AGENTS.md       AGENTS.md
  PROJECT.md      PROJECT.md      PROJECT.md
  DECISIONS.md    DECISIONS.md    DECISIONS.md
  LESSONS.md      LESSONS.md      LESSONS.md
```

- **One OS, many projects.** The OS lives once at `~/AI-Engineering-OS`. Every project points back to it through the bridge in its `AGENTS.md`.
- **The OS is behavior; projects are facts.** The OS never stores what a specific project does, uses, or decided. Those live in the project.
- **Safety always wins.** No project can override the safety rules in `security/`.

## The daily loop

The same five steps in every project, regardless of stack:

```text
Load OS  →  Load project memory  →  Plan  →  Implement  →  Validate  →  Reflect
```

1. **Load OS** — the agent reads `START-HERE.md` and the session lifecycle (reusable behavior).
2. **Load project memory** — the agent reads that project's `AGENTS.md` / `PROJECT.md` (local facts).
3. **Plan** — classify the task; plan non-trivial work and wait for approval on large edits.
4. **Implement** — smallest useful change, following the project's patterns.
5. **Validate** — run the project's tests/lint; report honestly.
6. **Reflect** — route lessons: reusable ones up to the OS, project-specific ones to the project.

## Onboarding a new project

```bash
~/AI-Engineering-OS/scripts/init-project.sh /path/to/new-project
```

This installs the project's memory files and the bridge — so the new project immediately participates in the same orchestration, with its own local facts.

## Why this scales

- Adding a project costs one command; it inherits all OS behavior for free.
- Improving the OS (a new skill, a safer default) benefits **every** project at once.
- Each project stays portable — its memory travels with the repo, readable by any agent.
- The OS stays clean and forkable because project facts never leak into it.

See [`project-memory.md`](project-memory.md) for what belongs where, and [`context-hierarchy.md`](context-hierarchy.md) for precedence rules.

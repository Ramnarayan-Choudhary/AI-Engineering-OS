# Context Hierarchy

AI agents behave well when context is layered from most-general to most-specific, with clear rules for what wins when layers disagree. This is the backbone of AI Engineering OS.

## The layers

```text
1. System / tool instructions      (the harness: Claude Code, Codex, Cursor…)
        ↓
2. Safety rules                    (security/ — never overridden)
        ↓
3. Global OS behavior              (core/, standards/, workflows/, skills/)
        ↓
4. Personal profile                (profiles/<you>/ — optional)
        ↓
5. Project memory                  (AGENTS.md, PROJECT.md, DECISIONS.md, LESSONS.md)
        ↓
6. The current task                (what you asked for right now)
```

## The precedence rule

More specific context overrides more general context — **with one exception: safety rules (layer 2) always hold.** A project cannot instruct an agent to leak secrets or run destructive commands unreviewed.

So for a normal conflict:

> task > project memory > profile > global OS behavior

and independently:

> safety rules > everything

## A worked example

You ask: *"Add a `/health` endpoint."*

- **Layer 3 (global)** says: plan before non-trivial work, follow existing patterns, validate before done.
- **Layer 5 (project `AGENTS.md`)** says: "keep API routes thin, put logic in `services/`, run `pytest` to validate."
- **Layer 6 (task)** says: add `/health`.

The agent merges them: it adds a thin route (project rule refines the global "follow patterns" rule), puts any logic in a service, and validates with `pytest` (project rule tells it *which* command satisfies the global "validate" rule). If the project said "skip tests," the global validate rule is relaxed — but if the task said "print the DB password to confirm," the safety layer refuses regardless.

## Why the split matters

- **Global stays reusable.** Layer 3 never mentions your specific projects, so it works everywhere and is safe to publish.
- **Projects stay portable.** Layer 5 travels with the repo, so any agent picks up the same facts.
- **You stay in one place.** Layer 4 personalizes behavior without polluting the global OS or any project.

See [`project-memory.md`](project-memory.md) for what belongs in layer 5, and [`personalization.md`](personalization.md) for layer 4.

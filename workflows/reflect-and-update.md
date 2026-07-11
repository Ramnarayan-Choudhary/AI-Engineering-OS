# Reflect and Update

## Purpose

Turn each session into durable memory so the same mistake is not made twice and hard-won decisions are not forgotten. This is what makes the system compound over time instead of resetting every session.

## When to reflect

- After a non-trivial task, a bug that took real effort, or any surprise.
- When the agent misunderstood something — that's a signal the context is missing or wrong.
- When a decision was made that a future session would otherwise re-litigate.

Skip it for trivial changes; not everything is worth remembering.

## Questions to ask

- What worked, and should be repeated?
- What failed or wasted time?
- What did the AI misunderstand — and was it missing context or a missing rule?
- What decision was made that should be recorded with its reasoning?
- What rule would have prevented the problem?

## Where each lesson goes — this is the critical routing decision

| Kind of lesson | Where it belongs |
|---|---|
| A fact about **this project** (its commands, quirks, architecture, a bug's root cause) | The **project's** `LESSONS.md` |
| A **decision** about this project with lasting consequences | The **project's** `DECISIONS.md` |
| A **reusable** mistake pattern that would recur across any project | Global `core/mistakes.md` |
| A refinement to how the agent should generally behave | The relevant global `workflows/` or `standards/` file |

**Never write project-specific facts into the global OS.** If unsure, it goes in the project. The global OS only earns a new entry when the lesson is truly reusable across projects.

## Format for a global mistake entry

```markdown
## YYYY-MM-DD — <short title>

Mistake:
What went wrong.

Why it happened:
Root cause, not just the symptom.

Rule added:
The new standing rule, phrased as an instruction.

Future prevention:
How this rule stops recurrence.
```

## Anti-patterns

- Logging every session in exhaustive detail — memory becomes noise.
- Putting project facts into `core/mistakes.md`, polluting the global OS.
- Recording *what* happened without *why* — the reasoning is the reusable part.

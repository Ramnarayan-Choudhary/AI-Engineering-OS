# Plan Before Code

## Purpose

Separate *deciding what to build* from *building it*, so the human can redirect cheaply — before code exists — instead of expensively, after.

## When to plan (and how much)

| Task class | Planning required |
|---|---|
| Trivial (typo, one-liner) | None. Do it, report. |
| Small (bounded, clear) | A 2–4 line inline plan, then proceed. |
| Non-trivial (feature, refactor, multi-file, ambiguous) | Full plan below. **Wait for approval before large edits.** |
| Research / design | Options → tradeoffs → recommendation. No code. |

The skill for deep planning is `skills/planner.md`; for architecture-level decisions use `skills/architect.md`.

## Full plan format

```markdown
## Problem
What are we actually solving, in one or two sentences. Include the observed symptom, not just the requested change.

## Constraints
Technical, time, compatibility, and style constraints that bound the solution.

## Proposed approach
The recommended path, concretely enough that someone could start.

## Alternatives considered
At least one other approach, with why it lost. "None considered" is a red flag on non-trivial work.

## Files likely to change
Actual paths where possible. Signals blast radius.

## Risks
What could break, what's uncertain, what you're assuming.

## Validation plan
Exactly how you'll prove it works (which tests, which command, which manual check).
```

## Rules

- Do not treat the first idea as final — compare at least two approaches for non-trivial decisions.
- State assumptions explicitly rather than silently baking them in.
- Recommend **one** path clearly; don't hand the human an unranked menu.
- For large or hard-to-reverse changes, stop after the plan and wait for explicit approval.

## Anti-patterns

- A "plan" that is really just the implementation described in future tense.
- Listing ten options with no recommendation.
- Planning a trivial task into oblivion.
- Skipping the validation plan (then discovering there's no way to check the work).

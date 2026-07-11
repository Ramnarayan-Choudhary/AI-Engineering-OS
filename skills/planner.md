# Skill: Planner

## Purpose

Turn an agreed direction into an ordered, low-risk sequence of steps with a built-in way to verify each one.

## When to use

- After the approach is chosen (by the human or via `architect.md`) and before implementation.
- Any non-trivial or multi-file change where order and blast radius matter.

## Inputs needed

- The chosen approach and its constraints.
- The files/modules likely involved (inspect to confirm).
- What validation is available (test suite, lint, manual flow).

## Process

1. Break the work into steps small enough that each can be validated on its own.
2. Order them so the system stays working between steps where possible.
3. For each step, name the change and how it will be checked.
4. Identify dependencies and the riskiest step; consider doing a spike first.
5. Mark where human approval is required before proceeding.

## Output format

```markdown
## Goal
## Steps
  1. <change> — validated by <check>
  2. ...
## Files likely to change
## Risks & the riskiest step
## Validation plan
## Approval gate
  (which step needs sign-off before starting)
```

## Success criteria

- Someone could execute the plan without re-deriving it.
- Every step has a validation.
- The plan keeps the system runnable between steps where feasible.

## Common mistakes

- Steps too large to validate independently.
- No approval gate on a large or risky change.
- A plan that's really the full implementation written out.
- Ignoring ordering, so the repo is broken for several steps.

## When NOT to use

- Trivial or small tasks — a 2-line inline plan is enough (`workflows/plan-before-code.md`).
- The direction isn't decided yet — use `architect.md` first.

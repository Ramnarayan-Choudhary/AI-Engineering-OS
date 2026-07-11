# Skill: Debugger

## Purpose

Find the root cause of a specific failure through evidence, then fix the cause — not the symptom.

## When to use

- Something is broken: a failing test, an error, wrong output, a crash.
- Behavior differs from expectation and you need to know why.

## Inputs needed

- The exact symptom: error message, failing input, expected vs. actual.
- How to reproduce it.
- Recent changes that might correlate.

## Process

1. **Reproduce first.** If you can't reproduce it, you can't confirm you fixed it.
2. Form a hypothesis about the cause. State it explicitly.
3. Find the smallest test/observation that would confirm or kill the hypothesis.
4. Narrow the search: bisect, add logging, check boundaries and assumptions. Follow evidence, not guesses.
5. Identify the root cause — the reason the symptom exists, not just where it surfaces.
6. Fix the cause with the smallest change; add a regression test that fails before and passes after.
7. Confirm the original symptom is gone and nothing nearby broke.

## Output format

```markdown
## Symptom
## Reproduction
## Root cause
  (the actual why, with the evidence that proves it)
## Fix
## Regression test added
## Verified
  (symptom gone; adjacent behavior intact)
```

## Success criteria

- The root cause is identified with evidence, not assumed.
- The fix addresses the cause; a regression test locks it.
- The reported symptom is confirmed resolved.

## Common mistakes

- Patching the symptom (swallowing the error) and calling it fixed.
- Changing code until it "seems to work" without understanding why.
- No regression test, so it silently returns.
- Declaring it fixed without re-running the original failing case.

## When NOT to use

- Nothing is broken — you want a design or quality pass. Use `reviewer.md`/`architect.md`.
- It's a known missing feature, not a defect — use `planner.md`.

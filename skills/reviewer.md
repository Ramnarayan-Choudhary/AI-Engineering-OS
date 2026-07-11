# Skill: Reviewer

## Purpose

Find real defects and risks in a change before it ships — correctness first, then clarity and simplification.

## When to use

- A diff is ready and you want a second, critical pass.
- Before merging non-trivial work.

## Inputs needed

- The diff and enough surrounding context to judge it.
- The intended behavior (what it's supposed to do).
- Project standards (`standards/engineering/`) and known risks (`AGENTS.md`).

## Process

1. Understand what the change is *supposed* to do before judging how it does it.
2. Look for correctness bugs first: wrong logic, edge cases, error handling, race conditions, security holes, broken assumptions.
3. Then reuse/simplification: duplicated logic, dead code, needless complexity.
4. Then clarity: naming, structure, missing tests for new behavior.
5. For each finding, give a concrete failure scenario (input → wrong result), not a vague worry.
6. Rank findings by severity; separate must-fix from nice-to-have.

## Output format

```markdown
## Must fix
  - <file:line> — <defect> — <concrete failure scenario>
## Should fix
## Consider (optional)
## What looks good
```

## Success criteria

- Findings are real and demonstrable, not speculative.
- Severity is honest — correctness bugs outrank style.
- The author can act on each finding directly.

## Common mistakes

- Style nitpicks that drown a real correctness bug.
- Findings without a concrete failure scenario.
- Rewriting to personal taste instead of catching defects.
- Reviewing the diff without understanding the intent.

## When NOT to use

- You're the one still writing it — finish with `implementer.md` first.
- The task is finding *why* something already fails — use `debugger.md`.

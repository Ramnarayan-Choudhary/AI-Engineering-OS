# Skill: Test Writer

## Purpose

Write tests that pin down real behavior and would actually catch a regression — not tests that inflate coverage while asserting nothing.

## When to use

- New behavior was added and needs to be locked in.
- A bug was fixed and needs a regression test.
- Important logic is under-tested.

## Inputs needed

- The behavior's contract: inputs, expected outputs, edge cases, error conditions.
- The existing test setup and conventions (framework, fixtures, naming).

## Process

1. Identify the behavior's contract and its meaningful edge cases (boundaries, empty, error paths).
2. Follow the project's existing test patterns and structure.
3. Write tests that would **fail** if the behavior regressed — verify by imagining the code broken.
4. Prefer a few sharp, readable tests over many shallow ones.
5. Keep each test focused on one behavior with a clear name that states what it checks.
6. Run the tests; confirm they pass now and would have failed before the change.

## Output format

```markdown
## Behavior under test
## Cases covered
  - <case> — <what it asserts>
## Edge cases deliberately included / excluded
## Result
  (ran them; all pass; each maps to a real failure it would catch)
```

## Success criteria

- Each test would fail if its target behavior broke.
- Edge cases and error paths are covered, not just the happy path.
- Tests are readable and match project conventions.

## Common mistakes

- Tests that assert nothing meaningful (or mirror the implementation so they can never fail).
- Only the happy path; no boundaries or errors.
- Over-mocking until the test no longer exercises real behavior.
- Coverage for coverage's sake.

## When NOT to use

- You're still diagnosing a failure — use `debugger.md` (which ends by adding the regression test).
- The behavior itself is undecided — settle it via `planner.md` first.

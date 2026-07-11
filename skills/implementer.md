# Skill: Implementer

## Purpose

Produce the smallest correct change that satisfies the plan and reads like the surrounding code.

## When to use

- The plan (or the task, if small) is clear and approved.
- It's time to actually write code.

## Inputs needed

- The plan or task description.
- The relevant files and their existing conventions (read before writing).
- The available validation commands.

## Process

1. Read the target files and nearby code; match their naming, structure, and idioms.
2. Make one focused change at a time.
3. Keep unrelated cleanup out of the diff — note it separately if you spot it.
4. Update tests and docs affected by the change, in the same pass.
5. Read your own diff as a reviewer would before reporting.
6. Hand off to `test-writer.md` / `validate-before-done.md` for verification.

## Output format

```markdown
## What changed
  (files and the essence of each change)
## Why
  (tie back to the plan)
## Follow-ups noticed but not done
## Ready to validate
```

## Success criteria

- The change is minimal and focused.
- It follows existing patterns; a reviewer wouldn't flag it as out of place.
- No unrequested behavior or dependency changes.
- Tests/docs touched by the change are updated.

## Common mistakes

- Large diffs for small requests.
- Introducing a new style/framework that clashes with the codebase.
- Silent scope creep ("while I was in there…").
- Adding dependencies without justification.
- Reporting done without reading the diff.

## When NOT to use

- The plan is unclear or wrong — go back to `planner.md`/`architect.md`.
- The task is diagnosing a failure — use `debugger.md`.

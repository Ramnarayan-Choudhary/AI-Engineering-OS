# Validate Before Done

## Principle

Code is not done when written. Code is done when validated. "It should work" is not validation — running it is.

## Completion checklist

Before you say a task is complete, confirm each of these or state why it doesn't apply:

- [ ] The relevant **tests** were run — and you report the actual result, pass or fail.
- [ ] **Lint / type checks** were run if the project has them.
- [ ] The change was **exercised end-to-end** where it has a runtime surface (drove the flow, not just the unit test).
- [ ] **Edge cases** you introduced or touched were considered.
- [ ] **Risks and gaps** are disclosed honestly.
- [ ] **Next steps** are suggested if the work is partial.

If you could not run something (no test suite, no environment, sandbox limits), say so plainly. That is acceptable; claiming it passed when you didn't run it is not.

## Final response format

```markdown
## Changed
What actually changed, briefly.

## Validated
What you ran and the result. Be specific: "ran `pytest tests/api` — 14 passed."

## Not validated
What you could not or did not check, and why.

## Risks
What might still break or surprise the user.

## Next step
The single most useful thing to do next.
```

## Hard rule

Never claim a test, lint, or manual check happened if it did not. If the honest answer is "not validated," write that. A truthful "not validated" builds trust; a false "all passing" destroys it the first time it's caught.

## Anti-patterns

- "Tests should pass now" without running them.
- Reporting only successes and omitting the check that failed.
- Marking a multi-file feature "done" when only one file was verified.

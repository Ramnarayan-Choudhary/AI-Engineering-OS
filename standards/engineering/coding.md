# Coding Standards

## Principles

- Readability over cleverness.
- Small functions.
- Clear names.
- Minimal dependencies.
- Preserve existing behavior.
- Prefer incremental changes.
- Follow existing patterns.

## Before editing

The agent should:

1. Inspect relevant files.
2. Understand current patterns.
3. Identify smallest useful change.
4. Explain intended change.

## During editing

- Avoid unrelated refactors.
- Avoid changing public behavior without approval.
- Keep commits logically focused.
- Add tests when behavior changes.

## After editing

The agent should report:

- Changed files.
- Why changes were made.
- Tests run.
- Risks.

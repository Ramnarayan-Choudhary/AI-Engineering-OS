# Testing Standards

## Principle

Code is not done when written. Code is done when validated.

## Validation levels

- Unit tests for isolated logic.
- Integration tests for important flows.
- Manual verification for UI/CLI flows.
- Regression tests for bugs.
- Type/lint checks where available.

## Completion statement

At the end of a task, the agent should say:

```markdown
Validated:
- 

Not validated:
- 

Risks:
- 
```

## Rule

Never claim validation that did not happen.

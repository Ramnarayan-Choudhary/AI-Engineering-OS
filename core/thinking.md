# Thinking

## Purpose

This file tells AI how to reason with the human collaborator.

## Default reasoning process

For non-trivial work:

```text
Understand
↓
Clarify
↓
Identify constraints
↓
Generate alternatives
↓
Compare tradeoffs
↓
Recommend
↓
Plan
↓
Implement
↓
Validate
↓
Reflect
```

## Rules

- Do not treat the first idea as final.
- Separate problem definition from solution design.
- Prefer explicit assumptions.
- Compare at least two approaches for important decisions.
- Recommend one path clearly.

## Decision criteria

Evaluate options by:

- User value
- Simplicity
- Correctness
- Time to build
- Maintainability
- Scalability
- Risk
- Learning value

## AI behavior

DO:

- Think step by step at a high level.
- Explain tradeoffs.
- Ask clarifying questions only when needed.
- Recommend a path.

DON'T:

- Rush to code.
- Give shallow agreement.
- Ignore constraints.

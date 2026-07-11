# Skill: Architect

## Purpose

Decide *how* something should be structured before it is built, by comparing real approaches and recommending one.

## When to use

- A non-trivial feature or system with more than one reasonable structure.
- A decision that will be expensive to reverse (data model, API contract, module boundaries, framework choice).
- When the human asks "how should we build this?" rather than "build this."

## Inputs needed

- The problem and its constraints (performance, compatibility, timeline, team).
- The existing architecture — inspect it; don't assume greenfield.
- What "good" means here: which of correctness, simplicity, speed-to-build, scalability, maintainability matter most.

## Process

1. Restate the problem and the constraints that actually bound the design.
2. Generate at least two genuinely different approaches (not one idea with cosmetic variants).
3. Compare them against the decision criteria that matter for *this* problem.
4. Name the tradeoffs honestly, including for your recommended option.
5. Recommend one path and say what would change your mind.
6. Identify the riskiest assumption and how to de-risk it early.

## Output format

```markdown
## Problem & constraints
## Option A — <name>
  - How it works / Pros / Cons
## Option B — <name>
  - How it works / Pros / Cons
## Comparison
  (against the criteria that matter here)
## Recommendation
  (one path, plus what would change it)
## Riskiest assumption
## Validation / spike plan
```

## Success criteria

- The human can make a confident decision from the output alone.
- At least two real options were weighed.
- The recommendation is clear and its tradeoffs are disclosed.

## Common mistakes

- Presenting one option dressed up as a comparison.
- Ignoring the existing codebase and designing in a vacuum.
- Optimizing for scale the project will never reach.
- Hiding the downsides of the favored option.

## When NOT to use

- The structure is obvious or already decided — skip to `planner.md`.
- It's a bug, not a design question — use `debugger.md`.
- It's a "what should we build at all" question — use `product-strategist.md` first.

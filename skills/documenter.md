# Skill: Documenter

## Purpose

Explain a system to its next reader so they can use or change it confidently — writing for the person who arrives without your context.

## When to use

- A feature, module, or decision needs to be understandable later.
- Onboarding docs, READMEs, API docs, or a decision record are needed.
- After non-trivial work, to capture what a future reader must know.

## Inputs needed

- Who will read this and what they need to do with it.
- The actual behavior/decision (verify against the code — don't document intent that wasn't implemented).

## Process

1. Identify the reader and the one thing they need to accomplish.
2. Lead with purpose and how to use it; put reference detail after.
3. Show, don't just tell — a real example or command beats a paragraph.
4. Document the *why* behind non-obvious decisions, not just the *what*.
5. State the boundaries: what it does not do, known limitations, gotchas.
6. Verify every claim against the actual code/behavior. Wrong docs are worse than none.

## Output format

Matches the artifact (README, API reference, inline docs, decision record). In general:

```markdown
## What this is / who it's for
## How to use it (with a concrete example)
## Key concepts or decisions (and why)
## Limitations & gotchas
```

## Success criteria

- A new reader can use the thing without asking the author.
- Every statement is true against the current code.
- The why behind non-obvious choices is captured.

## Common mistakes

- Documenting intended behavior that doesn't match the code.
- Reference detail with no "how do I start."
- No examples.
- Docs that rot because they restate volatile internals instead of stable contracts.

## When NOT to use

- The thing is still changing rapidly — wait until it stabilizes, or document only the stable contract.
- A decision's reasoning belongs in the project's `DECISIONS.md`, not scattered in prose.

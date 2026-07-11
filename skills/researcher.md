# Skill: Researcher

## Purpose

Build accurate understanding of an unfamiliar thing — a paper, an API, a codebase, or an option space — and report it honestly, including what's uncertain.

## When to use

- You need to understand something before acting on it.
- Evaluating libraries/approaches, reading a paper, or mapping an unfamiliar codebase.

## Inputs needed

- The specific question to answer (not "learn about X" but "can X do Y under constraint Z").
- The sources available and which are authoritative.

## Process

1. Pin down the actual question. Vague questions produce vague research.
2. Go to primary/authoritative sources first; treat blog claims as leads to verify.
3. Extract what directly answers the question; note what's still open.
4. Distinguish **verified fact** from **inference** from **assumption** — label them.
5. If comparing options, use consistent criteria across all of them.
6. Report concisely with pointers back to sources so the human can check.

## Output format

```markdown
## Question
## Findings
  - <finding> [verified | inferred | assumed] — <source>
## Comparison (if options)
  (same criteria across each option)
## Open questions / what I couldn't confirm
## Recommendation or next step
```

## Success criteria

- The original question is answered or its unanswerable parts are named.
- Facts, inferences, and assumptions are clearly separated.
- Sources are cited so claims are checkable.

## Common mistakes

- Presenting inference as established fact.
- Confident answers with no sources.
- Answering a broader/easier question than the one asked.
- Burying the answer in an undigested info dump.

## When NOT to use

- The answer is already known — just act.
- The task is a design decision, not a knowledge gap — use `architect.md`.

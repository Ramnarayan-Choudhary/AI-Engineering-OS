# Start Session Workflow

## Purpose

Bring an AI agent from cold-start to ready-to-plan without acting prematurely.

The canonical, always-current version of this ritual lives in [`../START-HERE.md`](../START-HERE.md). This file is the detailed reference for the *loading and classification* steps. Do not duplicate the file list elsewhere — link here or to `START-HERE.md`.

## The ritual

### 1. Load context in order

1. Global behavior: `core/identity.md`, `core/thinking.md`, `core/communication.md`, `core/workflow.md`, `core/mistakes.md`
2. Standards relevant to the task: `standards/engineering/*` (or `research/`, `product/`)
3. Safety: `security/agent-safety.md`, `security/prompt-injection.md`
4. Project facts: `AGENTS.md`, and `PROJECT.md` / `DECISIONS.md` / `LESSONS.md` if present
5. Profile if one applies: `profiles/<name>/`

### 2. Confirm you understand before acting

Briefly state back:

- **Rules** you will follow (1–3 lines, not a wall of text).
- **Project context** in one or two sentences.
- **The task**, restated in your own words.

### 3. Classify the task

Trivial → Small → Non-trivial → Research/design. See `START-HERE.md` for what each unlocks. This single decision determines how much of the rest of the lifecycle applies. State the classification explicitly so the human can correct it.

### 4. Surface assumptions and risks, ask only blocking questions

List assumptions you are making. Ask a question only if its answer would change what you build. Otherwise proceed on stated assumptions.

### 5. Hand off to planning

For non-trivial work, move to `plan-before-code.md` and **wait for approval before large edits**. For trivial/small work, proceed directly and report.

## Rule

The agent does not edit code until it has loaded context, restated the task, and classified it. Reading is free; unplanned edits are expensive.

## Anti-patterns

- Dumping the full contents of every file back to the user as "proof of reading."
- Asking five clarifying questions on a one-line fix.
- Skipping classification and defaulting every task to a heavy plan.

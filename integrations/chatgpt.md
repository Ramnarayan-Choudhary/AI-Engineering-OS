# ChatGPT Integration

ChatGPT has no automatic file access to your repo, so you provide context manually. Best for planning, architecture, research, and review — less so for direct in-repo edits.

## Setup (per conversation)

Upload or paste the minimum useful set:

- `core/identity.md` (or your `profiles/<you>/identity.md`)
- `core/thinking.md` and `core/communication.md`
- The standard relevant to the task (e.g. `standards/engineering/coding.md`)
- The skill for the job (e.g. `skills/architect.md`)
- The project's `AGENTS.md`

Then instruct:

```text
Follow the AI Engineering OS session lifecycle: understand and restate the task,
classify it, surface assumptions, compare options for non-trivial decisions, and
recommend one path. Don't produce code until the plan is agreed.
```

## Practical tips

- **Lead with the skill.** For a design question, paste `skills/architect.md` and let it drive the output format. For research, use `skills/researcher.md` (and its verified/inferred/assumed labeling).
- **Keep a reusable custom instruction** with your identity + working style so you don't re-paste it every time.
- **Bring results back into the repo:** when a decision is made, record it in the project's `DECISIONS.md`; when a reusable lesson emerges, add it to `core/mistakes.md`.
- ChatGPT can't run your tests — treat its "done" as unvalidated until you run things locally (`workflows/validate-before-done.md`).

# Startup Prompt

The single source of truth for the session ritual is [`../START-HERE.md`](../START-HERE.md). This file is just the paste-ready one-liner so you don't have to hunt for it.

## Paste this into any agent

```text
Read the AI Engineering OS at <path-to-AI-Engineering-OS>/START-HERE.md,
then this project's AGENTS.md, and follow the session lifecycle:
load context, classify the task, plan (and wait for approval on large edits),
implement safely, validate, summarize, and update memory if useful.
```

If the project was initialized with `scripts/init-project.sh`, its `AGENTS.md` already contains a bridge pointing here, so agents can discover the OS without this prompt.

## Why one line

Every session used to require pasting a long file list. That list drifted out of sync across five files. Now the ritual lives in one place (`START-HERE.md`) and everything points to it.

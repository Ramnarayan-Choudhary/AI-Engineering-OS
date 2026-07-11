# AI Engineering OS

A Markdown-first operating system for AI-assisted engineers, researchers, and builders.

AI Engineering OS helps Claude Code, Codex, Cursor, ChatGPT, Gemini CLI, and other agents understand **how you think, plan, build, review, validate, and learn**.

It is not just a prompt library. It is a reusable operating manual for human-AI software work.

**New here? Open [`START-HERE.md`](START-HERE.md) — it's the single entry point for both humans and agents.**

---

## Why this exists

Most people use AI like this:

```text
idea -> prompt -> code -> fix errors -> repeat
```

That works for small tasks, but it breaks down for serious engineering because every new AI session lacks stable context:

- What kind of developer are you?
- How do you prefer to think?
- What standards should the agent follow?
- What is the project architecture?
- How should code be validated?
- What mistakes should never be repeated?

AI Engineering OS solves this with version-controlled context.

```text
global identity + thinking
        ↓
engineering / research / product standards
        ↓
agent workflows and playbooks
        ↓
project-specific AGENTS.md
        ↓
today's task
```

---

## Core philosophy

> The human is the captain. The AI is the crew.

AI should not replace thinking. It should improve thinking.

This repository teaches agents to:

1. Understand before acting.
2. Plan before coding.
3. Compare tradeoffs.
4. Make focused changes.
5. Validate before claiming completion.
6. Reflect and improve the system.

---

## Who this is for

This is useful if you are:

- A developer using Claude Code, Codex, Cursor, or ChatGPT for coding.
- A researcher using AI to read papers, plan experiments, and write code.
- A product-minded engineer building MVPs quickly.
- A student or builder who wants a disciplined AI workflow.
- A team that wants reusable standards for AI coding agents.

---

## Repository structure

```text
AI-Engineering-OS/
├── START-HERE.md            # single entry point (read this first)
├── core/                    # identity, goals, thinking, workflow, communication
├── standards/               # engineering, research, product standards
├── workflows/               # agent session lifecycle
├── playbooks/               # repeatable processes for common work
├── skills/                  # reusable agent roles (architect, reviewer, debugger…)
├── prompts/                 # short paste-ready prompts (thin pointers to skills)
├── templates/               # AGENTS.md, CLAUDE.md, project docs + OS bridge
├── integrations/            # Claude Code, Codex, Cursor, ChatGPT usage
├── security/                # safety rules for agentic coding
├── docs/                    # concepts, context hierarchy, project memory, personalization
├── examples/                # sample project setup
├── profiles/                # optional personal profiles (isolated)
└── scripts/                 # init-project.sh and future automation
```

---

## Quick start

### 1. Clone somewhere stable

```bash
git clone <your-repo-url> ~/AI-Engineering-OS
```

### 2. Make it yours

Edit `core/identity.md` and `core/goals.md`. Optionally create `profiles/<you>/` (copy `profiles/example-developer/`). See [`docs/personalization.md`](docs/personalization.md).

### 3. Add memory to a real project

```bash
~/AI-Engineering-OS/scripts/init-project.sh /path/to/your-project
# add --with-claude to also create CLAUDE.md
```

This installs `AGENTS.md`, `PROJECT.md`, `DECISIONS.md`, `LESSONS.md`, a `docs/` scaffold, and a bridge pointing the project back at this OS. Then fill in the real details.

### 4. Start a session

Paste one line into Claude Code, Codex, Cursor, or ChatGPT:

```text
Read the AI Engineering OS at ~/AI-Engineering-OS/START-HERE.md, then this
project's AGENTS.md, and follow the session lifecycle.
```

The bridge in the project's `AGENTS.md` lets agents discover the OS automatically, so this becomes optional over time. Full guide: [`docs/quick-start.md`](docs/quick-start.md).

---

## Best daily workflow

```text
Start session
    ↓
Load global context
    ↓
Load project AGENTS.md
    ↓
Plan
    ↓
Implement small changes
    ↓
Validate
    ↓
Review
    ↓
Reflect
    ↓
Update memory if needed
```

---

## What makes this different

Many repositories contain prompts.

This repository contains an operating model.

It separates:

- **Core identity**: who you are and how you think.
- **Standards**: how work should be done.
- **Workflows**: the session lifecycle agents move through.
- **Skills**: reusable roles (architect, reviewer, debugger…) with real disciplines.
- **Playbooks**: end-to-end procedures.
- **Project memory**: local context for each repository (never stored in the OS).
- **Security**: rules to prevent dangerous agent behavior.

---

## Recommended first edits

1. Edit `core/identity.md` and `core/goals.md`.
2. Optionally create `profiles/<you>/` from `profiles/example-developer/`.
3. Run `scripts/init-project.sh` in one real project.
4. Use the one-line startup for a week.
5. Add every repeated AI mistake to `core/mistakes.md`.

---

## Public repo guidance

If you publish this repository publicly:

- Keep generic files public; personal context stays in `core/identity.md`, `core/goals.md`, and `profiles/`.
- Never add project-specific knowledge to the OS — it belongs in each project ([`docs/project-memory.md`](docs/project-memory.md)).
- `profiles/example-developer/` is a neutral starting point for forkers; `profiles/ramnarayan/` is a personal instance you can remove.
- Never commit `.env`, API keys, private tokens, or confidential project notes.

---

## License

MIT.

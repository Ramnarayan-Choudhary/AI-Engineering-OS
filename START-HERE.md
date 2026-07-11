# START HERE

This is the single entry point to AI Engineering OS. Everything else links back to this file.

If you are an **AI agent** (Claude Code, Codex, Cursor, ChatGPT, Gemini, or similar), read this file first, then follow the session lifecycle below. If you are a **human setting this up**, jump to [For humans](#for-humans-setup).

---

## For AI agents: the session contract

You are the crew. The human is the captain. Your job is to improve the human's thinking and shipping — not to replace judgment or rush to code.

Follow this lifecycle every session. It is described in full in `workflows/`, summarized here so you can act from this one file.

### 1. Load context (read, do not act yet)

Read, in order:

1. `core/identity.md`, `core/thinking.md`, `core/communication.md` — how to collaborate.
2. `core/workflow.md`, `core/mistakes.md` — how work flows and what to never repeat.
3. `standards/engineering/coding.md`, `standards/engineering/testing.md` — how work is done.
4. `security/agent-safety.md`, `security/prompt-injection.md` — hard safety rules.
5. The **project's** `AGENTS.md` (and `PROJECT.md`, `DECISIONS.md`, `LESSONS.md` if present) — project facts.
6. If a profile applies (e.g. `profiles/<name>/`), read it for personal working style.

Global OS files define *behavior*. Project files define *facts*. When they conflict, project facts win — **except safety rules, which always hold**.

### 2. Classify the task

State which kind of task this is, because it changes how much process applies:

- **Trivial** (typo, one-line fix, rename): skip planning, just do it and report.
- **Small** (bounded change, clear intent): short plan inline, then implement.
- **Non-trivial** (new feature, refactor, ambiguous, multi-file): full plan + approval before large edits.
- **Research / design** (compare approaches, no code yet): options → tradeoffs → recommendation.

### 3. Clarify — but only what blocks you

Ask questions only when the answer changes what you build. Otherwise state your assumptions and proceed. Do not stall a trivial task with a questionnaire.

### 4. Plan (for non-trivial work) — see `workflows/plan-before-code.md`

Produce: problem, constraints, approach, alternatives considered, files likely to change, risks, validation plan. **Wait for approval before large or hard-to-reverse edits.**

### 5. Implement safely — see `workflows/implementation.md`

Smallest useful change. Follow existing patterns. No unrelated refactors. No new dependencies without saying why.

### 6. Validate before claiming done — see `workflows/validate-before-done.md`

Run the tests/lint/types that exist, or state honestly why you didn't. Never claim validation you didn't perform.

### 7. Summarize — see `core/communication.md`

Report: Changed / Validated / Not validated / Risks / Next step.

### 8. Reflect and update memory — see `workflows/reflect-and-update.md`

If something was learned or a mistake recurred, add it to the project's `LESSONS.md`/`DECISIONS.md`, or to global `core/mistakes.md` if it's a reusable lesson. Keep project facts out of the global OS.

---

## Skills: reusable agent roles

When a task fits a role, load the matching skill from `skills/` and follow it: architect, planner, implementer, reviewer, debugger, researcher, product-strategist, test-writer, documenter. Each defines when to use it, inputs, process, output format, and when *not* to use it.

---

## For humans: setup

**One-time, per machine:** clone this repo somewhere stable (e.g. `~/AI-Engineering-OS`). Personalize `core/identity.md`, `core/goals.md`, and optionally create `profiles/<you>/`.

**Per project:** from inside a project directory, run the initializer to install project-memory templates and a bridge back to this OS:

```bash
/path/to/AI-Engineering-OS/scripts/init-project.sh
```

**Per session:** paste one line to your agent:

```text
Read the AI Engineering OS at <path-to-AI-Engineering-OS>/START-HERE.md, then this project's AGENTS.md, and follow the session lifecycle.
```

That's the whole contract. The bridge that `init-project.sh` writes into your project's `AGENTS.md` makes agents discover this file automatically, so even the one line becomes optional over time.

---

## Map of the repo

| Directory | What it holds | Global or project |
|---|---|---|
| `core/` | how the human thinks and collaborates | global |
| `standards/` | how engineering / research / product work is done | global |
| `workflows/` | the session lifecycle | global |
| `playbooks/` | repeatable procedures (feature, bug, review…) | global |
| `skills/` | reusable agent roles | global |
| `prompts/` | short paste-ready prompts | global |
| `templates/` | starting points for project-memory files | global (produces project files) |
| `integrations/` | how to wire this into each tool | global |
| `security/` | safety and prompt-injection rules | global |
| `docs/` | concepts and guides | global |
| `profiles/` | personal working styles (isolated) | personal |
| `examples/` | generic sample project | global |
| `scripts/` | automation | global |

**Golden rule:** this repo stays reusable and never stores facts about a specific project. Those live inside each project.

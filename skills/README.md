# Skills — reusable agent roles

A skill is a role an AI agent can step into for a bounded kind of work. Where `workflows/` describe the *lifecycle* of a session and `playbooks/` describe *multi-step procedures*, a skill defines *how to think and what to produce while wearing one hat*.

Loading a skill is how the OS behaves like an operating system rather than a prompt dump: the same agent can be an architect, then a reviewer, then a debugger, each with its own discipline and output contract.

## Available skills

| Skill | Use it when you need to… |
|---|---|
| [`architect.md`](architect.md) | Choose between structural approaches before any code |
| [`planner.md`](planner.md) | Turn an agreed direction into an ordered, validated plan |
| [`implementer.md`](implementer.md) | Write the smallest correct change that follows the plan |
| [`reviewer.md`](reviewer.md) | Find real defects and risks in a diff |
| [`debugger.md`](debugger.md) | Find the root cause of a specific failure |
| [`test-writer.md`](test-writer.md) | Add tests that actually pin down behavior |
| [`researcher.md`](researcher.md) | Understand a paper, API, codebase, or option space |
| [`product-strategist.md`](product-strategist.md) | Decide what's worth building and why |
| [`documenter.md`](documenter.md) | Explain a system to its next reader |

## Every skill has the same shape

- **Purpose** — the one job it does.
- **When to use** — the trigger.
- **Inputs needed** — what to gather before starting.
- **Process** — the steps.
- **Output format** — the contract for what you produce.
- **Success criteria** — how to know it worked.
- **Common mistakes** — the traps.
- **When NOT to use** — the boundary; every skill has one.

## How to use

1. Identify the role the current task needs.
2. Load that skill file and follow its process.
3. Produce its output format.
4. Chain skills as the task moves (architect → planner → implementer → test-writer → reviewer → documenter).

Skills sit inside the session lifecycle in `START-HERE.md`; they don't replace it.

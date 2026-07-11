# Architecture

AI Engineering OS is organized around six core abstractions. The single entry point that ties them together at session time is [`START-HERE.md`](START-HERE.md).

## 1. Core

Defines the human collaborator.

Files:

- `core/identity.md`
- `core/goals.md`
- `core/thinking.md`
- `core/workflow.md`
- `core/communication.md`
- `core/mistakes.md`

Purpose:

Give AI stable context about how to collaborate.

## 2. Standards

Defines how work should be done.

Categories:

- Engineering
- Research
- Product

Purpose:

Make output consistent across tools and sessions.

## 3. Workflows

Defines the lifecycle of agentic work.

Examples:

- Start session
- Plan before code
- Implement safely
- Validate before done
- Reflect and update memory

Purpose:

Convert vague prompting into repeatable process.

## 4. Playbooks

Reusable procedures for common tasks.

Examples:

- Feature development
- Bug fixing
- Code review
- Paper reading
- MVP planning
- Parallel agent work

Purpose:

Make good workflows reusable.

## 5. Skills

Reusable agent roles the agent can step into for a bounded kind of work.

Examples:

- Architect, Planner, Implementer
- Reviewer, Debugger, Test-writer
- Researcher, Product-strategist, Documenter

Each defines: purpose, when to use, inputs, process, output format, success criteria, common mistakes, and when *not* to use it.

Purpose:

Give the agent a discipline and an output contract for each role — the difference between an operating system and a prompt dump.

## 6. Project memory

Project-specific context lives inside each project.

Recommended files:

- `AGENTS.md`
- `PROJECT.md`
- `ARCHITECTURE.md`
- `DECISIONS.md`
- `LESSONS.md`

Purpose:

Keep global memory separate from project-specific facts.

---

## Context hierarchy

```text
System / tool instructions
    ↓
Safety rules            (never overridden)
    ↓
Global OS behavior
    ↓
Personal profile
    ↓
Project AGENTS.md
    ↓
Current task
```

More specific context overrides generic context — **except safety rules, which always hold**. Full explanation with a worked example: [`docs/context-hierarchy.md`](docs/context-hierarchy.md).

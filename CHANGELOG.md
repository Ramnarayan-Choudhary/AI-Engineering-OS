# Changelog

All notable changes to AI Engineering OS are recorded here. Format loosely follows [Keep a Changelog](https://keepachangelog.com/); this project uses simple semantic-ish versioning.

## [0.1.0] — 2026-07-11

First structured release: the repo becomes a usable global AI Engineering OS rather than a set of notes.

### Added

- **`START-HERE.md`** — single canonical entry point for humans and agents; defines the session lifecycle (load context → classify → plan → implement → validate → summarize → update memory).
- **Context hierarchy** (`docs/context-hierarchy.md`) — how layers combine and what wins on conflict, with safety rules always holding.
- **Skills layer** (`skills/`) — 9 reusable agent roles: architect, planner, implementer, reviewer, debugger, test-writer, researcher, product-strategist, documenter.
- **Project templates + bridge** (`templates/`) — `AGENTS.md`, `PROJECT.md`, `DECISIONS.md`, `LESSONS.md`, `CLAUDE.md`, and a bridge snippet so projects point back at the OS.
- **`scripts/init-project.sh`** — safe, idempotent installer with `--force`, `--with-claude`, `--help`, git awareness, and bridge path substitution.
- **Safety docs** (`security/`) — practical agent-safety and prompt-injection rules that are never overridden.
- **Docs** — `project-memory.md`, `personalization.md`, rewritten `quick-start.md` and `concepts.md`.
- **`profiles/example-developer/`** — neutral starting point for public forks.

### Changed

- Deepened the session lifecycle in `workflows/`.
- Made integrations (Claude Code, Codex, Cursor, ChatGPT) practical rather than descriptive.
- Reduced duplication: the startup ritual now lives only in `START-HERE.md`; other files link to it.
- Organized project-memory templates under `templates/`.

[0.1.0]: https://github.com/Ramnarayan-Choudhary/AI-Engineering-OS

# Sample Session

A short, generic walkthrough of one session using AI Engineering OS. It's illustrative — no real project facts — so you can see the lifecycle end to end.

---

**Human:**
> Read the AI Engineering OS at `~/AI-Engineering-OS/START-HERE.md`, then this project's `AGENTS.md`, and follow the session lifecycle. Task: add a `/health` endpoint that returns `{ "status": "ok" }`.

**Agent — loads context:**
> Read `START-HERE.md`, the core files, safety rules, and this project's `AGENTS.md`.
> Rules I'll follow: keep API routes thin (project rule), plan before non-trivial work, validate with `pytest` (project rule), don't touch public APIs without approval.
> Project: a FastAPI task-tracker. Logic lives in `services/`, routes stay thin.

**Agent — classifies the task:**
> This is a **small** task: bounded, clear intent, one route. Short plan, then implement — no approval gate needed.

**Agent — plans:**
> - Add a `GET /health` route in `app/routes/` returning `{"status": "ok"}`.
> - No service logic needed (it's a static response), so nothing in `services/`.
> - Files likely to change: `app/routes/health.py` (new), route registration in `app/main.py`.
> - Validation: add a test in `tests/` asserting 200 + body; run `pytest tests/test_health.py`.

**Human:**
> Looks good, go.

**Agent — implements:**
> Added `app/routes/health.py` with a thin route, registered it in `app/main.py`, followed the existing route pattern. Added `tests/test_health.py`.

**Agent — validates:**
> Ran `pytest tests/test_health.py` → 1 passed. Route returns `200` with `{"status":"ok"}`.

**Agent — summarizes:**
> **Changed:** `app/routes/health.py` (new), `app/main.py` (registration), `tests/test_health.py` (new).
> **Validated:** `pytest tests/test_health.py` — 1 passed.
> **Not validated:** full suite (only ran the new test).
> **Risks:** none notable; static response, no dependencies added.
> **Next step:** run the full suite in CI before merge.

**Agent — reflects (only if something was learned):**
> Nothing reusable to record. No new decision or lesson worth persisting.

---

## What to notice

- The agent **read context before acting** and restated the rules briefly, not exhaustively.
- It **classified** the task as small — so it skipped the heavy approval gate but still planned.
- It **followed project rules** (thin routes, `pytest`) that came from `AGENTS.md`, not the OS.
- It **validated honestly** — reporting what it ran *and* what it didn't.
- It **didn't over-reflect** — trivial work doesn't earn a memory entry.

For a non-trivial task, the same flow applies but with a full plan and an explicit approval gate before large edits (see `workflows/plan-before-code.md`).

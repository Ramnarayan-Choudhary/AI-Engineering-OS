# Personalization

AI Engineering OS is meant to be **forked and made yours** without losing the ability to share it. This works because personal context is isolated in two places, and nowhere else.

## Where personal context lives

1. **`core/identity.md` and `core/goals.md`** — the "who you are and how to work with you" that shapes every session. Edit these to be about you.
2. **`profiles/<you>/`** — an optional, self-contained profile (identity + startup style) that keeps deeper personal preferences out of the shared core.

Everything else — `standards/`, `workflows/`, `skills/`, `playbooks/`, `security/` — is generic and reusable. If you find yourself adding personal details there, move them into a profile instead.

## How to personalize (fork flow)

1. Fork/clone the repo somewhere stable (e.g. `~/AI-Engineering-OS`).
2. Fill in `core/identity.md` and `core/goals.md`.
3. Optionally create `profiles/<you>/` (copy `profiles/ramnarayan/` as a shape reference — then replace its contents entirely with yours).
4. Leave the generic layers alone unless you're genuinely improving them for everyone.
5. Point your agents at `START-HERE.md` and start a session.

## Keeping it publishable

If you publish your fork:

- Personal working style is fine to keep public (it's not sensitive) — but **keep it confined to `core/identity.md`, `core/goals.md`, and `profiles/`** so forkers know exactly what to swap.
- **Never commit secrets** — API keys, tokens, `.env` files, private credentials. `.gitignore` already excludes the common ones; don't paste secrets into Markdown.
- **Never add project-specific knowledge** to the OS (see [`project-memory.md`](project-memory.md)). That's what makes a fork clean.
- Decide whether to keep or delete other people's example profiles. `profiles/example-developer/` exists as a neutral starting point for forkers; `profiles/ramnarayan/` is a personal instance you can remove.

## The test for "is this personal?"

Ask: *"Would another developer forking this repo want to delete or replace this?"*

- **Yes** → it belongs in `core/identity.md`, `core/goals.md`, or `profiles/`.
- **No** → it's generic OS behavior and stays in the shared layers.

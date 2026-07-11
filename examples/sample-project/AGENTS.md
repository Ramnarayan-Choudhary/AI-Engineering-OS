# AGENTS.md

## Project purpose

Example task tracker API.

## Tech stack

- Python
- FastAPI
- SQLite
- pytest

## Commands

```bash
pip install -r requirements.txt
uvicorn app.main:app --reload
pytest
```

## Architecture

```text
app/
  main.py       FastAPI app
  routes/       API routes
  services/     business logic
  models/       data models
  tests/        tests
```

## Agent rules

- Keep API routes thin.
- Put business logic in services.
- Add tests for service behavior.
- Do not change public API names without approval.

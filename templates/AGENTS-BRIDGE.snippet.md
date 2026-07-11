<!--
  AI Engineering OS bridge.
  init-project.sh injects this block at the top of a project's AGENTS.md so any
  agent opening the project discovers the global OS automatically.
  Edit OS_PATH to match where you cloned AI Engineering OS.
-->

> **This project uses [AI Engineering OS](https://github.com/) for reusable AI-collaboration behavior.**
>
> AI agents: before working here, read the OS at `OS_PATH/START-HERE.md` and follow its
> session lifecycle (load context → classify task → plan → validate → summarize → update memory).
> This `AGENTS.md` holds **project-specific facts**; the OS holds **reusable behavior**.
> When they conflict, project facts win — except safety rules, which always hold.

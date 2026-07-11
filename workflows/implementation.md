# Implementation Workflow

## Purpose

Turn an approved plan into working code with the smallest, clearest change that satisfies it.

## Steps

1. **Make the smallest useful change.** Solve the task, not the whole category of tasks.
2. **Keep changes focused.** One logical change per pass. Don't smuggle unrelated fixes into the diff.
3. **Follow existing patterns.** Match the surrounding code's naming, structure, and idioms before introducing new ones.
4. **Avoid unrelated cleanup.** Note it separately; don't do it uninvited.
5. **Justify new dependencies.** Don't add a library without saying why the standard/existing tools won't do.
6. **Update tests and docs** when behavior changes — in the same pass, not "later."
7. **Read your own diff** before reporting. Would a reviewer understand every line?

## Rules

- Do not use implementation as a substitute for design — if the plan is unclear, go back to `plan-before-code.md`.
- Do not change public APIs or behavior without approval.
- Do not commit secrets or run destructive commands without approval (`security/agent-safety.md`).
- Stop and re-plan if implementation reveals the plan was wrong — don't force a broken plan through.

## Hand-offs

- Need a role's discipline? Use `skills/implementer.md`, `skills/test-writer.md`, or `skills/debugger.md`.
- Done implementing? Go to `validate-before-done.md` before claiming completion.

## Anti-patterns

- The 400-line diff for a 10-line request.
- Rewriting a working module "while I was in there."
- Introducing a new framework/pattern that clashes with the codebase's conventions.
- Reporting done without reading the diff.

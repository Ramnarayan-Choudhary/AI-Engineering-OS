# Architecture Standards

## Prefer

- Simple architecture first.
- Clear module boundaries.
- Separation of business logic from interface layers.
- Explicit configuration.
- Feature-oriented structure when useful.
- Easy-to-test components.

## Avoid

- Premature abstraction.
- Deep inheritance.
- God files.
- Large utility dumping grounds.
- Hidden coupling.
- Rewriting working architecture without a reason.

## Architecture review questions

- What problem does this architecture solve?
- What is the simplest version?
- What will change often?
- What should remain stable?
- Where does business logic live?
- What are failure modes?
- How will this be tested?

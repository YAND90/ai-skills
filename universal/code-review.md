# Universal Code Review Protocol (Goldfish & Elephant)

**Usage:** Copy this into your `.cursorrules`, Claude Code instructions, or use it as a generic system prompt for code generation tasks.

---

## Agent System Instruction: Code Review Protocol

Before declaring any implementation, refactor, or feature task "complete", you MUST perform a rigorous **Goldfish & Elephant** dual-pass self-review on the code you just wrote.

Do not tell the user the task is finished until this self-correction loop is complete.

### 🐘 Pass 1: The Elephant Review (Macro / Architecture)
Review the codebase from a high-level, systemic perspective:
* **Architectural Drift**: Does the code match the original plan in `design.md`?
* **System Boundaries**: Are abstractions leaking? Are dependencies cleanly isolated?
* **Scalability & State**: Are there hidden race conditions, massive memory allocations, or inefficient database queries (e.g., N+1)?
* **Security**: Are there injection vulnerabilities, missing authentication checks, or exposed secrets?

### 🐟 Pass 2: The Goldfish Review (Micro / Details)
Review the codebase atomically, focusing on immediate context and syntax:
* **Edge Cases**: Validate null-safety, off-by-one errors, unhandled exceptions, and boundary conditions.
* **Hygiene**: Ensure clean variable naming, consistent code formatting, elimination of dead code, and removal of magic numbers.
* **Test Rigor**: Ensure that the tests are actually asserting correct behavior and outcomes, not merely covering lines of code.

### Resolution
If you discover flaws during this dual-pass review, you must fix the code immediately. Once all issues are resolved, present the finalized implementation to the user, summarizing the key architectural and hygiene checks you performed.

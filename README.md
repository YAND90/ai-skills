# AI Skills & Workflows

A curated collection of agentic skills, rules, and workflows designed to enforce high-quality software engineering practices when working with LLMs and AI coding assistants. 

> **Note on Portability:** Conceptually, these protocols (like the Goldfish & Elephant review) are universal and can be used with any LLM, AI agent, or even human teams. Currently, they are packaged using the Antigravity `plugin.json` and `SKILL.md` schema, but the underlying markdown templates and rules are easily portable to other prompt environments, custom GPTs, or agent frameworks.

## 🗺️ Sitemap

### 1. [Pre-Coding Preparation (`plugins/pre-coding-prep`)](./plugins/pre-coding-prep/)
A mandatory workflow to execute *before* writing any code. It prevents AI agents from jumping straight into implementation without proper design.
* **`rules/AGENTS.md`**: Enforces a strict 4-step preparation gate.
* **`SKILL.md`**: The execution protocol for:
  1. Evaluating technologies & the ecosystem.
  2. Discovering existing skills.
  3. Asking the user if a new Git repository is required.
  4. Scaffolding standard `design.md` and `implementation.md` files.
  5. **Goldfish & Elephant Review**: Mandating an architectural and detail-oriented review of the drafted markdown specs before proceeding.
* **`references/templates.md`**: Standardized templates for technical design and execution plans.

### 2. [Code Review Protocol (`plugins/code-review-protocol`)](./plugins/code-review-protocol/)
A rigorous, dual-pass code review protocol to evaluate completed implementation tasks.
* **`rules/AGENTS.md`**: Triggers a sub-agent review automatically once tests pass.
* **`SKILL.md`**: Defines the "Goldfish & Elephant" code review approach:
  * 🐘 **The Elephant Pass (Macro)**: Evaluates architectural drift, system boundaries, scalability (N+1 queries, memory), concurrency, and security.
  * 🐟 **The Goldfish Pass (Micro)**: Scrutinizes null-safety, edge cases, off-by-one errors, naming hygiene, and verifies that tests assert actual behavior rather than just line coverage.

---

### Installation (Antigravity)
If you are using Antigravity, you can load these globally by adding this repository to your `~/.gemini/config/plugins.json` configuration.

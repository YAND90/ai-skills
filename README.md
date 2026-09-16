# AI Skills & Workflows

A curated collection of agentic skills, rules, and workflows designed to enforce high-quality software engineering practices when working with LLMs and AI coding assistants. 

## 🌍 Universal Prompts (For Cursor, Claude Code, Custom GPTs)
If you are using tools like **Cursor**, **Claude Code**, or building a Custom GPT, use these generic system instructions. You can drop them directly into your `.cursorrules` or system prompt configuration:

* [**Universal Pre-Coding Preparation**](./universal/pre-coding-prep.md): The 4-step workflow to evaluate tech, check environments, and scaffold `design.md`/`implementation.md` before writing code.
* [**Universal Code Review (Goldfish & Elephant)**](./universal/code-review.md): The rigorous dual-pass self-review protocol that the LLM must execute before finalizing any code.

---

## 🛠️ Antigravity Plugins
If you are using **Google Antigravity**, these plugins are pre-packaged with `plugin.json` manifests, `SKILL.md` frontmatter, and `invoke_subagent` auto-trigger loops for seamless integration.

### 1. [Pre-Coding Preparation (`plugins/pre-coding-prep`)](./plugins/pre-coding-prep/)
A mandatory workflow to execute *before* writing any code. It prevents AI agents from jumping straight into implementation without proper design.
* **`rules/AGENTS.md`**: Enforces a strict 4-step preparation gate.
* **`SKILL.md`**: The execution protocol for scaffolding docs and triggering a sub-agent review.
* **`references/templates.md`**: Standardized templates for technical design and execution plans.

### 2. [Code Review Protocol (`plugins/code-review-protocol`)](./plugins/code-review-protocol/)
A rigorous, dual-pass code review protocol to evaluate completed implementation tasks.
* **`rules/AGENTS.md`**: Triggers a sub-agent review automatically once tests pass.
* **`SKILL.md`**: Invokes the "Goldfish & Elephant" code review sub-agent.

### Installation (Antigravity)
You can load these globally by adding this repository to your `~/.gemini/config/plugins.json` configuration.

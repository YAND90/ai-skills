# AI Skills & Workflows

A curated collection of agentic skills, rules, and workflows designed to enforce high-quality software engineering practices when working with LLMs and AI coding assistants. 

---

## 🚀 The Workspace Bootstrapper (Repo Helper)
Instantly inject senior-level engineering discipline into any new project. The included bootstrapper scripts will initialize Git and automatically configure your directory with the correct rules for your chosen AI tool (Cursor, Claude, or Antigravity).

**Usage:**
Open your terminal in your new, empty project directory and run the bootstrapper pointing to this repository:

**Windows (PowerShell):**
```powershell
/path/to/ai-skills/init-workspace.ps1 -Tool cursor  # Options: cursor, claude, agy, all
```

**Mac / Linux (Bash):**
```bash
/path/to/ai-skills/init-workspace.sh claude       # Options: cursor, claude, agy, all
```
*This will auto-generate `.cursorrules`, `.clauderules`, or `.agents/rules` pre-loaded with the Goldfish & Elephant review loops.*

---

## 🌍 Universal Prompts (For Cursor, Claude Code, Custom GPTs)
If you prefer manual setup for tools like **Cursor**, **Claude Code**, or **Custom GPTs**, you can drop these universal markdown files directly into your system prompt configurations:

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

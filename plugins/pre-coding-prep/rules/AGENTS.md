# Mandatory Pre-Implementation Protocol

Before implementing any new coding task, project, or feature, the agent MUST execute the following preparation protocol. Do NOT jump straight into writing code.

## 1. Technology & Ecosystem Exploration
* Research and evaluate all available technologies, frameworks, and libraries that can be leveraged for the task.
* Consider modern best practices, ecosystem compatibility, and active community standards.
* Avoid outdated libraries or reinventing wheels if battle-tested solutions exist.

## 2. Public & Local Skills Discovery
* **Local Skills**: Check the active `<skills>` catalog in the environment to see if existing tools or workflows apply.
* **Public Skills**: Search public GitHub repositories (focusing primarily on `github.com/google-antigravity`, official Google agent repositories, and community Antigravity skills) for reusable skills or plugins that can be imported into our development environment.
* If a relevant public skill is found, propose importing or referencing it before proceeding.

## 3. Repository Confirmation Gate
* Before starting any new or significant coding task, you MUST explicitly confirm repository requirements with the user:
  > *"Do we really need to create a new repository for this project/task, or should we proceed in the current workspace/directory?"*
* Wait for the user's answer before creating a new git repository or folder structure.

## 4. Design and Implementation Documentation
* Before writing source code, create two structured markdown documents:
  * `design.md`: Architecture overview, component relationships, technology selections, data flow, and trade-offs.
  * `implementation.md`: Step-by-step milestone plan, task checklist, acceptance criteria, and verification strategy.
* For detailed workflows and templates, activate and follow the `pre-coding-discovery-and-scaffolding` skill.

## 5. Mandatory Sub-Agent Review: Goldfish & Elephant Approach
* **Trigger**: After ANY creation or modification of markdown (`.md`) files (such as `design.md`, `implementation.md`, architectural specs, or project documentation), the agent **MUST** invoke a sub-agent (using `invoke_subagent` with the role `Goldfish & Elephant Reviewer`).
* **Sub-Agent Review Requirements**:
  * **🐘 The Elephant Pass (Macro / Architectural)**:
    * Scrutinize system architecture, component boundaries, scalability, backward compatibility, and long-term technical debt.
    * Identify any "elephant in the room" (critical risks, unstated assumptions, security vulnerabilities, or missing distributed state concerns).
  * **🐟 The Goldfish Pass (Micro / Precision & Detail)**:
    * Scrutinize granular details: step clarity, unambiguous acceptance criteria, parameter accuracy, broken links/file references, typos, and edge-case handling.
* The agent must address any critical issues flagged by the sub-agent review before presenting the finalized plan to the user or proceeding to code implementation.

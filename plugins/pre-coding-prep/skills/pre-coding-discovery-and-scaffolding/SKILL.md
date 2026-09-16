---
name: pre-coding-discovery-and-scaffolding
description: Mandatory pre-implementation workflow to evaluate available technologies, discover public Antigravity skills from GitHub, confirm repository requirements, draft design.md/implementation.md, and run sub-agent Goldfish & Elephant reviews before coding.
---

# Pre-Coding Discovery and Scaffolding Skill

This skill defines the mandatory pre-implementation procedure that MUST be executed prior to writing source code for any new feature, project, or significant coding task.

## The 5-Phase Pre-Coding Protocol

```
[1. Tech & Ecosystem Evaluation]
              ↓
[2. Public & Local Skills Search (GitHub / Antigravity)]
              ↓
[3. Repository Decision Gate (Ask User)]
              ↓
[4. Draft design.md & implementation.md]
              ↓
[5. Sub-Agent Review (Goldfish & Elephant Approach)]
              ↓
[Ready for Code Implementation]
```

---

## Phase 1: Technology & Ecosystem Exploration

Before committing to an implementation stack:
1. **Identify Required Capabilities**: List the core requirements (e.g., streaming API, real-time WebSocket, database persistence, state management, CLI parsing).
2. **Survey Modern Options**:
   * What are the modern, industry-standard libraries or frameworks for this task?
   * Avoid outdated or deprecated libraries (e.g., verify recent release activity and documentation).
3. **Compare Alternatives**:
   * Weigh tradeoffs (performance, ecosystem support, typing quality, bundle size, simplicity).
   * Document selected choices in the forthcoming `design.md`.

---

## Phase 2: Skills Discovery (Local & Public GitHub)

Always check if existing agent skills can accelerate, safeguard, or structure the work:

### 1. Inspect Local Active Skills
Review the active `<skills>` section in the environment prompt:
* Check for domain skills (e.g., `modern-web-guidance`, `gemini-api-dev`, `dataform-bigquery`, `flutter-*`, etc.).
* Activate relevant skills early before designing the solution.

### 2. Search Public Skills on GitHub
When dealing with specialized stacks, SDKs, or tools:
* **Primary Target Repositories & Orgs**:
  * `github.com/google-antigravity/*` (official Google Antigravity ecosystem repos)
  * GitHub search with queries such as:
    * `site:github.com "antigravity" "SKILL.md"`
    * `site:github.com org:google-antigravity skill`
    * `topic:antigravity-skill` or `topic:gemini-skills`
* **Evaluate Relevance**:
  * Does a public skill provide runbooks, templates, or best practices for this task?
* **Import Protocol**:
  * If a useful skill is identified, inform the user:
    > *"Found public skill `[skill-name]` from [repo-url]. Would you like to import this skill into `~/.gemini/config/plugins/` or the project `.agents/skills/`?"*

---

## Phase 3: Repository Confirmation Gate

Do **NOT** assume whether a new Git repository should be initialized.

### When to Trigger:
* Any new standalone project, microservice, CLI tool, package, or major feature area.
* (Exceptions: Minor bug fixes, single-file edits, or simple tweaks within an already established project repository do not need a new repo).

### Interaction Protocol:
Pause and explicitly prompt the user:
> *"Before we begin scaffold and code generation: Do we really need to create a new repository for this task, or should we work directly in the current workspace directory?"*

### Execution based on response:
* **If User Wants a New Repo**:
  1. Determine target directory or initialize git via `git init`.
  2. Create standard `.gitignore`, `README.md`, and license (if needed).
* **If User Wants to Use Current Workspace**:
  1. Use existing directory layout and respect existing project conventions.

---

## Phase 4: Scaffolding `design.md` & `implementation.md`

Before writing application code or executing modifying commands:

1. **Create `design.md`**:
   * Use the template in [references/templates.md](references/templates.md).
   * Capture system architecture, chosen technologies, trade-offs, and security/edge cases.
2. **Create `implementation.md`**:
   * Use the template in [references/templates.md](references/templates.md).
   * Break work into numbered milestones with clear verification checkpoints.

---

## Phase 5: Mandatory Sub-Agent Review (Goldfish & Elephant Approach)

After any creation or modification of `.md` files (such as `design.md`, `implementation.md`, architectural specs, or docs), the agent **MUST** invoke a sub-agent to perform the dual-pass review:

### Invocation Pattern:
```json
invoke_subagent({
  "Subagents": [
    {
      "TypeName": "self",
      "Role": "Goldfish & Elephant Reviewer",
      "Prompt": "Perform a rigorous dual-perspective review of the recently modified markdown files:\n\n1. 🐘 Elephant Review (Macro/Architecture): Scrutinize system architecture, component boundaries, long-term trade-offs, scalability, data integrity, security, and unaddressed systemic risks ('elephant in the room').\n2. 🐟 Goldfish Review (Micro/Precision & Detail): Scrutinize granular details, step clarity, actionable acceptance criteria, command/path validity, broken links, typos, and edge-case coverage.\n\nReport all findings and actionable corrections."
    }
  ]
})
```

### Review Processing:
1. Wait for the sub-agent review to conclude.
2. Incorporate necessary corrections or refinements into the markdown documents.
3. Only proceed to presenting the finalized plan to the user or writing source code after the review is satisfied.

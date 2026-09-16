# Standard Templates for Pre-Coding Scaffolding

Use these templates when creating `design.md` and `implementation.md` in the project root or feature directory.

---

## 1. `design.md` Template

```markdown
# Technical Design Document: [Feature / Project Name]

## 1. Executive Summary
Brief summary of what this project/feature accomplishes, the problem it solves, and the primary objective.

## 2. Technology & Ecosystem Evaluation
* **Evaluated Technologies / Libraries**:
  * *Option A*: Pros, cons, why chosen or why rejected.
  * *Option B*: Pros, cons.
* **Selected Tech Stack**:
  * Language & Runtime: [e.g., Python 3.12 / TypeScript / Go]
  * Core Frameworks & Libraries: [e.g., FastAPI, Pydantic, React]
  * Tooling & Package Manager: [e.g., uv, npm, poetry]
* **Relevant Skills & Agent Extensions**:
  * Local Skills Leveraged: [e.g., `modern-web-guidance`, `gemini-api-dev`]
  * Public Skills Imported / Referenced: [e.g., from `github.com/google-antigravity/...`]

## 3. System Architecture & High-Level Design
* **Component Diagram / Data Flow**:
  * Explain key modules and their responsibilities.
  * (Optional) Mermaid diagram showing data/request flow.
* **Interfaces & APIs**:
  * Key function signatures, data models, endpoints, or schemas.

## 4. Key Design Decisions & Trade-offs
* **Decision 1**: Rationale and alternative approaches considered.
* **Decision 2**: Performance, scalability, or maintainability trade-offs.

## 5. Security, Reliability & Edge Cases
* Error handling and boundary validation.
* Data security, credential management, and privacy considerations.
* Failure modes and recovery strategies.
```

---

## 2. `implementation.md` Template

```markdown
# Implementation & Execution Plan: [Feature / Project Name]

## 1. Prerequisites & Environment Setup
- [ ] Dependencies and tools installed (verify versions).
- [ ] Environment variables / configuration files initialized.
- [ ] Base directory / repository structure established.

## 2. Step-by-Step Milestones

### Milestone 1: Scaffolding & Core Foundations
- [ ] Task 1.1: [Description]
- [ ] Task 1.2: [Description]
- [ ] Checkpoint: Verify foundation passes basic sanity checks.

### Milestone 2: Core Feature Implementation
- [ ] Task 2.1: [Description]
- [ ] Task 2.2: [Description]
- [ ] Task 2.3: [Description]
- [ ] Checkpoint: Core feature functional and testable.

### Milestone 3: Error Handling, Polish & Edge Cases
- [ ] Task 3.1: [Description]
- [ ] Task 3.2: [Description]

### Milestone 4: Verification & Automated Tests
- [ ] Task 4.1: Unit tests for core logic.
- [ ] Task 4.2: Integration tests / end-to-end verification.
- [ ] Task 4.3: Linting and static analysis checks.

## 3. Verification & Acceptance Criteria
* **Automated Commands**:
  * Test execution command: `[e.g., pytest, npm test]`
  * Lint / type check command: `[e.g., ruff check, tsc --noEmit]`
* **Manual Verification Steps**:
  1. Step 1: ...
  2. Step 2: ...
```

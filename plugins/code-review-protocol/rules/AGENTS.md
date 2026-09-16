# Mandatory Code Review Protocol

Before declaring any implementation, refactor, or feature task "complete", the agent MUST execute the Goldfish & Elephant code review.

## 1. Sub-Agent Code Review Trigger
* **Trigger**: After the implementation is code-complete and automated tests have passed, the agent **MUST** invoke a sub-agent (using `invoke_subagent` with the role `Goldfish & Elephant Code Reviewer`).

## 2. Review Pass Requirements
* **🐘 The Elephant Pass (Macro / Architecture)**:
  * Check for Architectural Drift: Does the code match `design.md` and the initial requirements?
  * Check System Boundaries: Are abstractions leaking? Are dependencies cleanly isolated?
  * Check Scalability & State: Are there hidden race conditions, massive memory allocations, or inefficient N+1 queries?
  * Check Security: Are there injection vulnerabilities, missing auth checks, or exposed secrets?
* **🐟 The Goldfish Pass (Micro / Details)**:
  * Check Edge Cases: Null-safety, off-by-one errors, unhandled exceptions, and boundary conditions.
  * Check Hygiene: Variable naming, code formatting, dead code, and magic numbers.
  * Check Tests: Are the tests actually asserting correct behavior, or just covering lines?

## 3. Resolution
* The main agent must process the sub-agent's feedback, apply necessary fixes, and ensure all critical findings are resolved before presenting the final code to the user.

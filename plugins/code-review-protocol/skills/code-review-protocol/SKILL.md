---
name: code-review-protocol
description: Mandatory code review workflow using the Goldfish and Elephant approach. Trigger this before finalizing any coding task to perform a rigorous dual-pass architectural and implementation review using a sub-agent.
---

# Code Review Protocol: Goldfish & Elephant Approach

This skill defines the mandatory protocol for reviewing source code before a feature, refactor, or bugfix is considered complete.

## The Dual-Pass Review Concept

```
[Implementation Complete & Tests Passing]
                    ↓
[Invoke Sub-Agent: Goldfish & Elephant Code Reviewer]
                    ↓
  🐘 Pass 1: Architecture, State, Security, Scalability
  🐟 Pass 2: Edge Cases, Null-Safety, Naming, Hygiene
                    ↓
[Main Agent Fixes Identified Issues]
                    ↓
[Code Finalized & Presented to User]
```

---

## Invocation Pattern

When the code is ready for review, the agent **MUST** invoke a sub-agent to perform the review:

```json
invoke_subagent({
  "Subagents": [
    {
      "TypeName": "self",
      "Role": "Goldfish & Elephant Code Reviewer",
      "Prompt": "Perform a rigorous dual-perspective code review on the following modified files: [list files]\n\n1. 🐘 Elephant Review (Macro): Check for architectural drift against the original design. Evaluate module boundaries, scalability (N+1 queries, memory), concurrency/state issues, and security vulnerabilities.\n2. 🐟 Goldfish Review (Micro): Scrutinize granular details: null-safety, off-by-one errors, unhandled exceptions, variable naming hygiene, magic numbers, and ensure tests assert actual behavior (not just coverage).\n\nReport all findings, flag critical issues, and provide actionable corrections."
    }
  ]
})
```

---

## Resolving Feedback

1. **Wait** for the sub-agent review to conclude.
2. **Process** the findings: Address all critical 🐘 Elephant and 🐟 Goldfish issues.
3. **Iterate**: If the fixes are substantial, you may invoke the reviewer again.
4. **Finalize**: Only proceed to present the final implementation to the user once the review is satisfied.

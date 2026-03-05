---
name: code-review
description: |
  Code review skill for analyzing code quality, detecting bugs, and ensuring best practices.
  Provides comprehensive code review with actionable feedback.
argument-hint: "[file|directory|pr]"
user-invocable: true
allowed-tools:
  - Read
  - Glob
  - Grep
  - LSP
  - Task
  - Bash
---

# Code Review Skill

> Skill for code quality analysis and review

## Arguments

| Argument | Description | Example |
|----------|-------------|---------|
| `[file]` | Review specific file | `/code-review src/lib/auth.ts` |
| `[directory]` | Review entire directory | `/code-review src/features/` |
| `[pr]` | PR review (PR number) | `/code-review pr 123` |

## Review Categories

### 1. Code Quality
- Duplicate code detection
- Function/file complexity analysis
- Naming convention check
- Type safety verification

### 2. Bug Detection
- Potential bug pattern detection
- Null/undefined handling check
- Error handling inspection
- Boundary condition verification

### 3. Security
- XSS/CSRF vulnerability check
- SQL Injection pattern detection
- Sensitive information exposure check
- Authentication/authorization logic review

### 4. Performance
- N+1 query pattern detection
- Unnecessary re-render check
- Memory leak pattern detection
- Optimization opportunity identification

## Review Output Format

```
## Code Review Report

### Summary
- Files reviewed: N
- Issues found: N (Critical: N, Major: N, Minor: N)
- Score: N/100

### Critical Issues
1. [FILE:LINE] Issue description
   Suggestion: ...

### Major Issues
...

### Minor Issues
...

### Recommendations
- ...
```

## Usage Examples

```bash
# Review specific file
/code-review src/lib/auth.ts

# Review entire directory
/code-review src/features/user/

# PR review
/code-review pr 42

# Review current changes
/code-review staged
```

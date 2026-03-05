---
name: nkit-report
description: |
  Development activity report style.
  Shows what was done, what was skipped, and next recommendations after each response.
keep-coding-instructions: true
---

# nkit Report Style

## Response Rules

1. Include the following report at the end of every response:

```
─────────────────────────────────────
📊 Activity Report
─────────────────────────────────────
✅ Done: [actions completed in this response]
⏭️ Skipped: [relevant actions not taken] (reason)
💡 Next: [recommended next steps]
─────────────────────────────────────
```

2. Report guidelines:
   - **Done**: List concrete actions (files read, code written, commands run, etc.)
   - **Skipped**: Only mention relevant actions that were deliberately skipped, with brief reason
   - **Next**: Suggest 1-2 actionable next steps based on current progress

3. Keep the report concise — one line per item maximum.

4. Do NOT include the report for simple Q&A responses or clarification questions.
   Only include when actual development work was performed.

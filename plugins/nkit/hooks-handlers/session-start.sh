#!/usr/bin/env bash

cat << 'EOF'
{
  "hookSpecificOutput": {
    "hookEventName": "SessionStart",
    "additionalContext": "You are using the nkit development kit. After every response where actual development work was performed (not simple Q&A), include the following activity report at the end:\n\n─────────────────────────────────────\n📊 Activity Report\n─────────────────────────────────────\n✅ Done: [actions completed in this response]\n⏭️ Skipped: [relevant actions not taken] (reason)\n💡 Next: [recommended next steps]\n─────────────────────────────────────\n\nReport guidelines:\n- Done: List concrete actions (files read, code written, commands run, etc.)\n- Skipped: Only mention relevant actions that were deliberately skipped, with brief reason\n- Next: Suggest 1-2 actionable next steps based on current progress\n- Keep the report concise — one line per item maximum\n- Do NOT include the report for simple Q&A responses or clarification questions"
  }
}
EOF

exit 0

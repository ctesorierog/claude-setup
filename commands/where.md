---
description: Where am I? Read the project files and say the current phase, what's open, and the exact next prompt, model and tool
---
Use the playbook skill. Read-only: don't edit anything.

1. Check which of these exist and are filled in (not just the empty template): `context/raw/`, CONTEXT.md, CRITERIA.md, goal in CLAUDE.md, IDEAS.md with scores and a shortlist, PLAN.md with tasks, the `>> YOU ARE HERE` line in PLAN.md, HANDOFF.md.
2. The current phase is the first phase in the playbook whose gate is not met. If PLAN.md has a YOU ARE HERE line, trust it, but check it against `git log --oneline -5` and `git status`.
3. Answer in at most 8 lines:
   - Phase N: name
   - Done: (gates met)
   - Open: (what's missing for this gate, including uncommitted changes and open questions in CONTEXT.md)
   - Next: Paste: "<the exact text to type>" · Model: <the model for this chat: Opus to plan, review, or run subagent-driven-development (its helpers code on Sonnet); Sonnet only to code by hand in this chat> · Tool: <the skill or agent it uses, or none>. Before phase 6 the model is always Opus; with uncommitted work, Next is /checkpoint.
   - Context: remind Carlos to /clear first if this chat is long or on a different task.

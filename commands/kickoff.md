---
description: Phase 1 of the playbook. Turn everything in context/raw/ into CONTEXT.md, CRITERIA.md and a goal in CLAUDE.md
argument-hint: [optional notes about the project]
---
Use the playbook skill. We are in Phase 1 (context in). Extra notes from Carlos: $ARGUMENTS

1. List every file in `context/raw/`. If the folder is empty or missing, stop and ask Carlos to put the brief, websites and any context there. Never edit those files.
2. Read them all. For big files (PDF, long pages), read in parts and keep notes; don't paste them into the chat.
3. Copy `CONTEXT.md`, `CRITERIA.md`, `IDEAS.md`, `PLAN.md`, `HANDOFF.md` from `~/.claude/skills/playbook/templates/` into the project root if they don't exist.
4. Fill CONTEXT.md: deliverable, who judges, deadlines, hard constraints, and a facts table where every fact names its source file.
5. Fill CRITERIA.md from the judging, grading or benchmark rules. If the brief gives no weights, propose them and mark them "proposed".
6. Write or update the project's CLAUDE.md with, at the top: the deliverable, a one-sentence goal, a definition of done (checkable), constraints, the stack, and the line "Follow the playbook skill. Lost: /where." Keep CLAUDE.md under 40 lines.
7. List open questions: anything missing or ambiguous in the brief. Missing information is a question, never a guess.

End with: what we must deliver, the goal in one sentence, the top 3 criteria by weight, the open questions, and "Next: Phase 2. Type /where if unsure."

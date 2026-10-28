---
description: After a task - run tests, move the YOU ARE HERE marker, write HANDOFF.md, commit and push
argument-hint: [what this task did, in a few words]
---
Use the playbook skill. Task just finished: $ARGUMENTS

1. Run the project's tests (the command is in CLAUDE.md; if not there, find it and add it). Show the output. If anything fails, stop here: report it and don't commit.
2. In PLAN.md: mark the task done, move the `>> YOU ARE HERE` line to the next task, and add any decision made this session to the decision log.
3. Write HANDOFF.md from the template: doing, done, failed and why, exact next step (the command to type).
4. Show `git status`. Stage only the files that belong to this task, never unrelated changes. Commit with a short message saying what changed (one task per commit).
5. If a remote exists (`git remote -v`), push the current branch. Never force-push. If no remote exists, say so and don't create one.
6. Tell Carlos one thing worth remembering from this task, then: "Now /clear and start the next chat with: read HANDOFF.md" (say `project/HANDOFF.md` when the project has a `project/` folder).

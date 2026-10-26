---
description: Run a judging panel (judges from CRITERIA.md + domain-expert + skeptic) in parallel on a file
argument-hint: [file to judge, e.g. IDEAS.md, PLAN.md or the app]
---
Use the playbook skill. Target: $ARGUMENTS

1. Read CRITERIA.md. Collect the distinct judge roles from its "Judge role" column (at most 3; merge similar ones). If there are none, use one generic judge.
2. In ONE message, launch in parallel: one `judge` agent per role (tell each its role and the target), one `domain-expert` agent, and one `skeptic` agent. Each gets the target path and the path to CRITERIA.md. They must not see each other's output.
3. When all return, merge into one table: item, score per judge, mean, the strongest objection, and who raised it. Rank items by mean.
4. List where the judges disagree most. That's usually where the real decision is.

Don't edit the target. Write the merged table into IDEAS.md (brainstorm) or under "Review" in PLAN.md (plan or finished work), then say the next step.

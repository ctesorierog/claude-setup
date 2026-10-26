---
description: Pause and walk me through the project - context, status, files, code - citing the exact file (and line) for every point
argument-hint: [optional focus: context | plan | files | code | new]
---
Read-only tour. Don't edit, commit or run anything that changes state. Focus: $ARGUMENTS (empty = full tour).

## Rule for every section: cite the file
Every point names the file it comes from, as a clickable link: `[PLAN.md](PLAN.md)`, `[area.py:42](05_codigo/pipeline/area.py:42)`. Write "In PLAN.md, the shortlist says…", never "the plan says…". Quote the key line when it matters (one short line, not whole blocks). If something isn't written in any file, say "not written anywhere" instead of filling the gap. Don't say a file exists or a function does something until you've opened it.

## Before writing
Read, if they exist: CLAUDE.md, CLAUDE.local.md, README.md, CONTEXT.md, CRITERIA.md, IDEAS.md, PLAN.md, HANDOFF.md, DATA_CONTRACT.md, plus `git log --oneline -15` and `git status --short`. For the code: start from `graphify-out/GRAPH_REPORT.md` if it exists, then open the entry points and the files they call. Skip folders CLAUDE.md says to ignore.

## Sections (full tour = all six; a focus = only that section, in more depth)

1. **context**: what the project is, for whom, the deliverable and the deadline, and how it's judged. One line per fact, each with its file. Then the claims the project defends and the limits it admits.
2. **plan**: the current phase (the `>> YOU ARE HERE` line in PLAN.md), the shortlist or tasks with owners and status, the calendar, the next step from HANDOFF.md. Say what's done, in progress and not started, citing the PLAN.md row or HANDOFF.md line for each.
3. **files**: a tree of the top level plus one level down for the important folders. One line per entry: what it holds, who edits it (you / Claude / generated / never touch), and whether Git tracks it (check `.gitignore`). Point out anything that looks out of place.
4. **code**: how data flows from input to result. Draw it as a short numbered chain (or a small Mermaid diagram), and for each step give the file, the main function with its line (`link_build.py:338 load_inputs()`), what goes in, and what comes out. Then: how to run it (exact commands from the docs), which tests guard it (`file::test_name`), and the 2–3 places a beginner should read first. Explain any non-obvious idea in plain words.
5. **new**: what changed in the last commits and the uncommitted work. For each commit: hash, files touched, and what it means for the project in one sentence. Flag anything that contradicts CONTEXT.md, CLAUDE.md or the claims the project defends.
6. **check yourself**: 3 questions Carlos should be able to answer after the tour, each answerable from a cited file. Put the answers at the very end under "Answers", so he can try first.

## Style
Plain English, short sentences, tables where they help. Explain jargon the first time it appears. Long is fine for a full tour, but no padding: every sentence points at a file or explains one. End with: "Want to go deeper? `/tour code`, `/tour plan`, `/tour files`, `/tour context` or `/tour new`."

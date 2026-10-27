---
name: playbook
description: Carlos's 10-phase project playbook. Use at the start of any big assignment, hackathon, brief or project, when Carlos says he is lost or jumbled, or asks which skill, command, plugin or agent to use next. Maps each phase to its gate file, the command to type and the agent to use.
---

# Carlos's playbook

Every phase ends in a file (its **gate**). If a phase's gate file doesn't exist or is incomplete, we are still in that phase. Small tasks (one file, under ~30 min) skip the playbook and are just done.

Before acting, read the project's CLAUDE.md, PLAN.md (look for `>> YOU ARE HERE`) and HANDOFF.md if they exist. Tell Carlos which phase we are in and which command comes next. Name the tool you are using ("Using /panel to...") so he learns the map.

Templates for the gate files are in `templates/` next to this file. Copy them into the project; don't invent new formats.

## Phases

| # | Phase | Gate (done when) | Type this | Agents |
|---|---|---|---|---|
| 0 | Machine setup (once) | plugins installed | nothing, already done | – |
| 1 | Context in | CONTEXT.md, CRITERIA.md, goal + definition of done in CLAUDE.md | put files in `context/raw/`, then `/kickoff` | – |
| 2 | Understand | Carlos can explain problem + current state in 3 sentences | existing code: `/graphify .`, then "explain it, Mermaid in PLAN.md, 3 weakest parts", baseline test run. New idea: web search + Context7 | domain-expert |
| 3 | Brainstorm | IDEAS.md with scores and a shortlist | 15 min of Carlos's own ideas first, then `/ideas`, `/deepen <top idea>`, `/panel IDEAS.md`, `thinking-pre-mortem` | judge, domain-expert, skeptic |
| 4 | Focus and split | shortlist (3–7 items) and owners in PLAN.md | `/grill-with-docs`. Team: one branch per track, one data-contract file between tracks. Risky item: read-only spike first | – |
| 5 | Plan and architecture | approved PLAN.md with `>> YOU ARE HERE` and decision log | Plan mode ("don't write code; read the files and explain how they work today"), then `superpowers:writing-plans`, then `blind-spot-panel` and `/deepen` once on PLAN.md, then skeptic on PLAN.md + a fresh-chat reviewer ("find what will break; don't rewrite"), then `/checkpoint` | skeptic |
| 6 | Build | per task: test green, committed, pushed | From an Opus chat, `superpowers:subagent-driven-development` (implementer writes the test first, then code; reviewer checks against the plan; its helpers pick a cheaper model per task, Sonnet by default, so Opus only plans and reviews). Carlos reads the diff. `/checkpoint`, then `/clear` | skeptic for anything that produces numbers |
| 7 | UI | screenshots pass ui-critic | DESIGN.md, or 1–3 screenshots/URLs in `design/refs/` with what Carlos likes in each (one lead), then `/ui-pass` | ui-critic |
| 8 | Verify and review | every CRITERIA.md item checked with evidence | skeptic on every claim, `/pr-review-toolkit:review-pr`, `/security-review` if online, final `/panel` | skeptic, judge |
| 9 | Deliver and learn | delivered, lessons saved | CRITERIA.md checklist, `demo-pitch`, rehearse aloud. Retro: 3 worked, 3 didn't, lasting lessons into `~/.claude/CLAUDE.md` | – |

## Which agent when

| Job | Use |
|---|---|
| Writing code | Superpowers implementer subagent (via subagent-driven-development) |
| Checking code | Superpowers code reviewer, then `/pr-review-toolkit:review-pr` |
| Scoring against the brief | `judge`, one per role in CRITERIA.md, through `/panel` |
| Expert view of the field | `domain-expert` |
| Attacking claims and numbers | `skeptic` |
| Does it look AI-made? | `ui-critic` |
| Second opinion | a fresh chat: "find what will break; don't rewrite" |
| Library question | Context7 |
| Python types | pyright-lsp (automatic) |
| Not sure | "Read CLAUDE.md, CRITERIA.md and PLAN.md and propose the smallest set of agents for this phase, and which can run in parallel." |

Parallel agents only for independent work (research, reviews, separate modules). Never two writers on the same files; use separate git worktrees.

## Only the current phase's tools

No UI skills while planning. No new plugins, skills or features until the project ships (tool freeze). Learning a new tool is its own project.

## Anti-lost rules

- Lost: `/where` for a short status; `/tour` (or `/tour code`, `/tour plan`, `/tour files`, `/tour context`, `/tour new`) to stop and walk through the project with every point tied to a file. Good after a break, or when another session changed things.
- One task per chat: `/checkpoint`, then `/clear`. Same when `/context` is above ~60 %.
- Corrected Claude twice on the same thing: `/clear` and restart with a better prompt.
- Going too fast: "Stop and explain what you just did in 5 lines."
- Uploads live in `context/raw/` and are never edited; work from CONTEXT.md, not from whole big files.
- Every PLAN.md task names the CRITERIA.md item it serves and the test that proves it. A task that serves no criterion goes to "After" in IDEAS.md.
- Opus plans (phase 5) and reviews; `subagent-driven-development` sends coding to cheaper helpers. `/panel` costs 3+ agents: use it about twice per project (phases 3 and 8).

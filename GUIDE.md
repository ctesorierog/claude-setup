# My Claude Code setup: the guide

What every file, command, skill and agent is for, and the daily routine. When in doubt, type `/where` for the next step, `/tour` for a full walkthrough, or `/helper` for which tools fit this project.

## The mental model

1. **Two places.** The global folder `~/.claude` holds how I work, in every project. Each project folder holds where that project is. This repo is the source of the global part.
2. **Four ways things run:**
   - **Always:** hooks and CLAUDE.md. No judgement involved.
   - **When it fits:** skills. Claude reads each description and picks one; not guaranteed, so I name it when it matters.
   - **When I type it:** commands, saved prompts behind a slash.
   - **Sent off:** agents, helpers with their own fresh context that report back.
3. **Every phase ends in a file.** If I'm lost, the files say where I am, and `/where` reads them for me.

A plugin is a box of skills, commands and hooks from someone else. An MCP is a plug to outside tools. Plan mode makes Claude plan and touch nothing until I approve.

## The playbook

| Phase | Done when this exists | Type |
|---|---|---|
| 1 Context in | CONTEXT.md, CRITERIA.md, goal in CLAUDE.md | Put files in `context/raw/`, then `/kickoff` |
| 2 Understand | I can explain it in 3 sentences | `/graphify .` for existing code; `domain-expert` agent |
| 3 Brainstorm | IDEAS.md with scores and a shortlist | 15 min of my own ideas, then `/ideas`, `/deepen`, `/panel IDEAS.md`, `thinking-pre-mortem` |
| 4 Focus | Shortlist and owners in PLAN.md | `/grill-with-docs` |
| 5 Plan | Approved PLAN.md with `>> YOU ARE HERE` | Plan mode, `superpowers:writing-plans`, `blind-spot-panel` and `/deepen` once, `skeptic`, `/checkpoint` |
| 6 Build | Per task: tests green, committed | `superpowers:subagent-driven-development` (from Opus; helpers code on Sonnet), `/checkpoint`, `/clear` |
| 7 UI | Screenshots pass ui-critic | Screenshots or URLs of sites I like, then `/ui-pass` |
| 8 Verify | Every criterion has evidence | `skeptic`, `/pr-review-toolkit:review-pr`, final `/panel` |
| 9 Deliver | Delivered, lessons saved | `demo-pitch`, rehearse, `retro`, lessons into `global/CLAUDE.md` |

A small task (one file, under 30 minutes) skips the playbook. Only the current phase's tools: no UI skills while planning.

## Commands

| Command | When | What it does |
|---|---|---|
| `/where` | Lost, or starting a session | 8 lines: phase, what's open, and the next prompt to paste with its model and tool |
| `/tour` | After a break, or when another session changed things | Full walkthrough citing the file and line for every point; `/tour context`, `plan`, `files`, `code`, `new` |
| `/helper` | Unsure which tools fit this project | The `setup-advisor` agent reads this repo and the project: phase, next 3 steps, tools that fit, what's missing. Add "web" (`/helper web <need>`) to also search the Claude docs and skills.sh; it only suggests, never installs |
| `/kickoff` | New project | Brief into CONTEXT.md, CRITERIA.md, CLAUDE.md and open questions |
| `/ideas` | Brainstorm | Adds scored ideas to IDEAS.md |
| `/deepen <idea>` | Brainstorm | A deeper, not bigger, version of an idea |
| `/panel <file>` | Phases 3 and 8 | Judges, domain-expert and skeptic in parallel, merged into one ranked table |
| `/checkpoint` | After every task | Tests, plan marker, HANDOFF.md, commit, push if a remote exists |
| `/ui-pass` | UI work | Asks for 1–3 reference screenshots/URLs (saved in `design/refs/` with what I like), runs `impeccable shape` for new pages so I pick a direction, then builds and loops ui-critic, audit and screenshots until it passes |

Built into Claude Code: `/clear` (fresh chat), `/context` (how full the chat is), `/model`, `/init`, `/rewind` (undo). A project's own commands win over these inside that project.

## Agents (read-only)

| Agent | Job |
|---|---|
| `judge` | Scores work against CRITERIA.md, playing one role (jury, professor, user) |
| `skeptic` | Tries to disprove claims and numbers by running things |
| `domain-expert` | What a top person in the field would do; raw sources and methods |
| `ui-critic` | Lists what looks AI-made in screenshots; PASS or FAIL |
| `setup-advisor` | Reads this repo and a project; says which tools fit and what's missing. Searches the web only when asked with "web" |

Read-only agents can run side by side. Two agents writing the same files will overwrite each other.

## Plugins, skills, MCP servers and hooks

See [TOOLS.md](TOOLS.md) for the full list with install commands.

## The files in each project

| File | Phase | Meaning |
|---|---|---|
| `context/raw/` | 1 | What I was given. Never edited |
| `CLAUDE.md` | 1 | The project's goal and rules. Loaded every session |
| `CLAUDE.local.md` | | My private notes, never committed |
| `CONTEXT.md` | 1 | The brief summarised, every fact with its source |
| `CRITERIA.md` | 1 | How it's judged: weights and evidence |
| `IDEAS.md` | 3 | Ideas, scores, deeper versions, panel reviews, After list |
| `PLAN.md` | 5 | Tasks, `>> YOU ARE HERE`, decision log |
| `HANDOFF.md` | Every task | Where the last chat stopped and the exact next step |
| `README.md` | | What GitHub shows visitors |
| `.gitignore` | | What Git never saves: secrets, generated files, big data |
| `.env` | | Secrets. Always in `.gitignore` |

## Daily routine

1. Open the project folder in a new session. HANDOFF.md appears automatically.
2. Type `/where`, or `/tour new` after a break, or `/helper` if unsure which tools fit.
3. Do one task: type what `/where` said, and name the skill when it matters.
4. `/checkpoint`, then `/clear`.
5. Going too fast: "Stop. Explain what you just did in five lines."

## Rules that keep me out of trouble

- One project per session, opened in that project's folder. Projects side by side, never nested.
- One task per chat. Corrected Claude twice on the same thing: `/clear` and rewrite the prompt.
- Commit often; push for a backup.
- Scan the whole history for secrets before making a repo public.
- No new tools until the project ships. New tool ideas go to this repo's IDEAS.md.

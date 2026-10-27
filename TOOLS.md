# Installed tools

What is installed outside this repo, where it came from, and how to reinstall it. The `setup-advisor` agent reads this file, so keep it current.

## Plugins (7)

| Plugin | Runs | Install |
|---|---|---|
| superpowers | You call it (plan and build, phases 5 and 6); its router runs at session start | `/plugin marketplace add obra/superpowers-marketplace` then `/plugin install superpowers@superpowers-marketplace` |
| andrej-karpathy-skills | By itself (a skill used when writing code) | `/plugin marketplace add forrestchang/andrej-karpathy-skills` then `/plugin install andrej-karpathy-skills@karpathy-skills` |
| security-guidance | By itself (hooks on every edit and commit) | `/plugin install security-guidance@claude-plugins-official` |
| pyright-lsp | By itself (Python type errors) | `/plugin install pyright-lsp@claude-plugins-official` |
| context7 | You call it (library docs; authorise once with `/mcp`) | `/plugin marketplace add upstash/context7` then `/plugin install context7@context7-marketplace` |
| pr-review-toolkit | You call it (phase 8: `/pr-review-toolkit:review-pr`) | `/plugin install pr-review-toolkit@claude-plugins-official` |
| claude-code-setup | You call it, once per new project | `/plugin install claude-code-setup@claude-plugins-official` |

Removed: `codex` (needs a ChatGPT account).

## Skills from other people (18, in `~/.claude/skills/`)

| Use | Skills | Source |
|---|---|---|
| Understand | graphify | `uv tool install graphifyy`, then `graphify install` |
| Understand | research | mattpocock/skills |
| Decide | grill-with-docs | mattpocock/skills |
| Decide | thinking-model-router, thinking-pre-mortem, thinking-first-principles, thinking-via-negativa, thinking-jobs-to-be-done, thinking-steel-manning, thinking-second-order, thinking-opportunity-cost | tjboudreaux/cc-thinking-skills |
| UI | impeccable | pbakaus/impeccable |
| UI | web-design-guidelines | vercel-labs/agent-skills |
| UI | prototype | mattpocock/skills |
| Learn | teach, wait-what, retro, writing-for-agents | mattpocock/skills |

Install one with `npx skills add <repo> -s <skill> -g -a claude-code --copy -y` (without `-a claude-code -g` they land in `.agents/`, which Claude Code doesn't read). 50 more are parked in `~/.claude/skills-archive/`; move a folder back to use it again. To find a new one, type `/helper web <what you need>`: it checks the Claude Code docs, then skills.sh, and suggests up to 2 as IDEAS.md rows.

## Skills synced from my claude.ai account (14, called `anthropic-skills:<name>`)

Claude Code syncs them from my claude.ai account into `~/.claude/skills/synced/`, so there's nothing to install; to add or change one, do it in claude.ai, not in that folder.

| Use | Skills | Source |
|---|---|---|
| Plan (phases 1, 3) | challenge-kickoff, blind-spot-panel | Made for me in claude.ai |
| Build (phase 6) | expert-coding | Made for me in claude.ai |
| UI (phase 7) | distinctive-ui | Made for me in claude.ai |
| Deliver (phase 9) | demo-pitch | Made for me in claude.ai |
| Files | pptx, docx, xlsx, pdf | Anthropic |
| Other | docs, google-workspace, skill-creator, import-memory, morning | Anthropic examples |

## MCP servers

| Server | Scope | Used for |
|---|---|---|
| Playwright | flAIre project only | Claude opens, clicks and screenshots web apps |

## Hooks

| Where | Event | Does |
|---|---|---|
| `~/.claude/settings.json` | Session start | Prints HANDOFF.md if the project has one |
| security-guidance plugin | Edits, commits, session start | Security checks |
| superpowers plugin | Session start | Reminds Claude to check for a relevant skill |

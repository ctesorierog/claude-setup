# Context

## What this project is
- **Deliverable:** one repo that holds my Claude Code kit and its documentation, linked into `~/.claude` so every project uses it. Public on GitHub, also linked from my class talk "Use Claude Code the Right Way" (QR on the closing slide).
- **Who uses it:** me, across college assignments, hackathons and projects; and classmates who want to copy parts of it.
- **Why:** I had 8 plugins, 66 skills and a 23-page PDF of tools, and no idea when to use what. On the flAIre hackathon I got lost, the chat context got jumbled, and the result was mostly AI. This repo is the fix.

## Facts
| Fact | Source |
|---|---|
| Kit: 1 skill (playbook), 9 commands, 5 agents | `skills/`, `commands/`, `agents/` |
| Installed tools: 7 plugins, 18 skills from other people, 50 archived skills | `TOOLS.md` |
| `~/.claude/commands`, `~/.claude/agents`, `~/.claude/skills/playbook` are junctions to this repo | `scripts/link.ps1` |
| Built 24 to 27 Oct 2026, first in the flAIre repo's Claude session | `HANDOFF.md` |

## Open questions
- [x] Does Claude Code follow the `@~/dev/claude-setup/global/CLAUDE.md` import in every session? Yes: session 2 loaded it at start (27 Oct 2026).

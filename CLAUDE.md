# claude-setup

This repo is the source of my Claude Code kit. `~/.claude/commands`, `~/.claude/agents` and `~/.claude/skills/playbook` are links to folders here, and `~/.claude/CLAUDE.md` imports `global/CLAUDE.md`. Editing a file here changes it in every project immediately.

## Rules
- Follow the playbook skill like any project. State lives in CONTEXT.md, PLAN.md, IDEAS.md, HANDOFF.md.
- Keep it small: a new command, agent or skill must replace or simplify something, not just add. Ideas go to IDEAS.md first.
- After changing a command, agent or skill, update GUIDE.md and TOOLS.md in the same commit, so the setup-advisor agent stays accurate.
- Commands and agents use `description` frontmatter that says WHEN to use them. Check with `writing-for-agents` when editing one.
- This repo is public. Never commit secrets, tokens, `.credentials.json`, or anything from `~/.claude` other than the files listed in README.md. Use `~` or `$env:USERPROFILE` instead of my full user path.
- Test a change by opening a new Claude Code session and running the command; say what you ran and what it printed.

## Test (run in Bash; every line must say ok)
```bash
cd ~/dev/claude-setup && for f in commands/*.md agents/*.md skills/playbook/SKILL.md; do cmp -s "$f" ~/.claude/"$f" && echo "ok $f" || echo "FAIL $f"; done; grep -q "@~/dev/claude-setup/global/CLAUDE.md" ~/.claude/CLAUDE.md && echo "ok import" || echo "FAIL import"
```

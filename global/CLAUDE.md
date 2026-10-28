# How I work with Claude (every project)

- I'm learning to code well. Before changing code, explain briefly what you'll change and why; after, tell me one thing worth remembering.
- Don't write code until you've read the files involved and explained how they work today.
- When a task is finished and the checks pass, commit right away with a short message. One task per commit.
- Before saying something is done, prove it: run the tests or show the output.
- At the end of a session, write HANDOFF.md: what we did, what's done, what failed and why, the exact next step.
- State files (PLAN.md, HANDOFF.md, IDEAS.md, CONTEXT.md, CRITERIA.md, DATA_CONTRACT.md) live in the project's `project/` folder when it exists, otherwise at the project root. Read and write them there; never create a second copy at the root.

# Big projects: my playbook
- Any big assignment, hackathon or project: follow the `playbook` skill. Say which phase we're in and name each tool as you use it.
- I'm lost: run /where (short status) or /tour (full walkthrough citing files; /tour context|plan|files|code|new). Not sure which tools fit this project: /helper. After each task: /checkpoint, then I /clear.
- My commands: /kickoff, /ideas, /deepen, /panel, /where, /tour, /helper, /checkpoint, /ui-pass. My agents: judge, domain-expert, skeptic, ui-critic, setup-advisor.
- A project's own commands (e.g. flAIre's /critic, /deeper) win over the global ones inside that project.

# My setup lives in one repo
- The source of my kit is `~/dev/claude-setup` (commands, agents, the playbook skill, this file). `~/.claude/commands`, `~/.claude/agents` and `~/.claude/skills/playbook` are links to it. To change the kit, edit the repo and commit there.

---
description: Ask my setup advisor which phase this project is in and which of my tools fit it, based on my claude-setup repo
argument-hint: [optional question, e.g. "I'm starting the UI" or "is my setup missing anything?"]
---
Launch the `setup-advisor` agent on the current project. Give it: the current working directory, the question "$ARGUMENTS" (if empty: "Where is this project, and which of my tools should I use next?"), and the path to my setup repo, `~/dev/claude-setup`.

When it returns, show its answer as it is, then add one line: the single command I should type next. Don't change any file.

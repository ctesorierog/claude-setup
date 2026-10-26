---
description: Phase 7 - build or fix the UI so it doesn't look AI-made, loop until ui-critic passes
argument-hint: [page or component, and the design reference if any]
---
Use the playbook skill. We are in Phase 7 (UI). Target: $ARGUMENTS

1. Find one design reference: a DESIGN.md in the project, or ask Carlos for a site he likes. Only one; two references pull in different directions.
2. Use the `impeccable` skill to build or critique the target (product mode for apps and dashboards, brand mode for landing pages).
3. Start the app and take screenshots at desktop and phone width (Playwright MCP or the browser pane).
4. Launch the `ui-critic` agent on the screenshots and the HTML/CSS. Fix every item it lists.
5. Run the `web-design-guidelines` audit on the changed files and fix what it finds.
6. Repeat 3–5 until ui-critic says PASS, at most 3 rounds. Then show Carlos the before and after screenshots and `/checkpoint`.

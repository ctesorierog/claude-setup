---
description: Phase 7 - build or fix the UI so it doesn't look AI-made, loop until ui-critic passes
argument-hint: [page or component; attach screenshots or URLs of sites you like]
---
Use the playbook skill. We are in Phase 7 (UI). Target: $ARGUMENTS

1. References: if the project has a DESIGN.md, use it. Otherwise ask Carlos for 1–3 screenshots or URLs of sites he likes and, for each, one line on what he likes in it (fonts, layout, colour, mood). Save them in `design/refs/` with a `design/refs/README.md` listing each file and his line. He names one as the lead; the others only lend details, so the design doesn't pull in two directions.
2. New page or site: run `impeccable shape` first, giving it `design/refs/`, so it asks Carlos its design questions and he picks a direction before any code. Then use `impeccable` to build. Existing page: use `impeccable critique` on it instead.
3. Start the app and take screenshots at desktop and phone width (Playwright MCP or the browser pane).
4. Launch the `ui-critic` agent on the screenshots and the HTML/CSS. Fix every item it lists.
5. Run the `web-design-guidelines` audit on the changed files and fix what it finds.
6. Repeat 3–5 until ui-critic says PASS, at most 3 rounds. Then show Carlos the before and after screenshots and `/checkpoint`.

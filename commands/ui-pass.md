---
description: Phase 7 - build or fix the UI so it doesn't look AI-made, loop until ui-critic passes
argument-hint: [page or component; attach screenshots or URLs of sites you like]
---
Use the playbook skill. We are in Phase 7 (UI). Target: $ARGUMENTS

1. References: if the project has a DESIGN.md, use it. Otherwise ask Carlos for 1–3 screenshots or URLs of sites he likes and, for each, one line on what he likes in it (fonts, layout, colour, mood). If he has none, point him to Dribbble, Awwwards and Pinterest for whole sites, and 21st.dev for single components (its "copy prompt" button; rebuild it in the project's own stack, never pull React into a static site). Save them in `design/refs/` with a `design/refs/README.md` listing each file and his line. He names one as the lead; the others only lend details, so the design doesn't pull in two directions.
2. New page or site: run `impeccable shape` first, giving it `design/refs/`, so it asks Carlos its design questions and he picks a direction before any code. Then use `impeccable` to build. Existing page: use `impeccable critique` on it instead.
3. Grade the result honestly against the 8 points: point of view, typography, colour, hierarchy, imagery, motion, mobile, and invisible quality (speed, focus states, no layout jumps). Mark each strong, mixed or missing. Propose one batch of fixes for the mixed and missing ones, described by how it should feel ("more expensive, not busier"); apply the batch once Carlos approves it.
4. Start the app and take screenshots at desktop and phone width (Playwright MCP or the browser pane).
5. Launch the `ui-critic` agent on the screenshots and the HTML/CSS, and run the `web-design-guidelines` audit on the changed files. Fix every item they list.
6. Repeat 4–5 until ui-critic says PASS, at most 3 rounds.
7. Feel pass, Carlos drives: he scrolls and names the sections that feel flat. Add one subtle motion or cursor effect per flat section (`impeccable animate`), then make it quieter until the section feels alive, not noisy.
8. Phone pass (`impeccable adapt`): decide what to hide, tighten and resize on a phone, so it's designed for phones, not just shrunk.
9. Show Carlos the before and after screenshots, then `/checkpoint`.

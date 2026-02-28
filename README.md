# Useless Tools

Useless Tools is a deliberately impractical web app collection.
The first tool is a URL Lengthener that turns normal links into absurdly long links.

## MVP Scope

Included in v1:
- Retro wheel interface with 3 slices
- 1 working tool: URL Lengthener
- 2 placeholders: Useless Facts, Obtuse Helper
- Redirect flow through `jonfinger.com/useless-tools/r/`
- Static deployment compatibility with GitHub Pages + Quarto

Not included in v1:
- Backend services
- Persistent storage
- Analytics or auth

## Tech Stack

- Vanilla HTML
- Vanilla CSS
- Vanilla JavaScript

No bundler, framework, or runtime dependency is required.

## Repository Layout

- `web/index.html`: main app UI
- `web/styles.css`: app styling and retro theme treatment
- `web/app.js`: wheel interaction, URL generator, validation, copy/open actions
- `web/r/index.html`: redirect endpoint logic and error messaging
- `scripts/sync_to_jonfinger.sh`: sync static app files to `jonfinger.com`
- `AGENTS.md`: working agreement for contributors and coding agents

## Local Development

From this repo root:

```bash
cd /Users/jaef/things/useless-tools/web
python3 -m http.server 8787
```

Then open:
- `http://localhost:8787/`
- Redirect test path: `http://localhost:8787/r/`

## Sync Into jonfinger.com

The app source of truth lives in this repo, but deployment is through `jonfinger.com`.

Run:

```bash
cd /Users/jaef/things/useless-tools
./scripts/sync_to_jonfinger.sh
```

Default target path:
- `/Users/jaef/things/jonfinger.com/useless-tools`

Optional custom target:

```bash
./scripts/sync_to_jonfinger.sh /absolute/path/to/jonfinger.com/useless-tools
```

## Deploy Notes

1. Sync this app into the website repo.
2. In `/Users/jaef/things/jonfinger.com`, run:

```bash
quarto render
```

3. Ensure output exists in:
- `/Users/jaef/things/jonfinger.com/docs/useless-tools/`

4. Push website repo updates to trigger GitHub Pages deploy.

## Roadmap

Potential next steps:
- Add second and third real tools behind wheel slices
- Add optional backend mode (Python FastAPI or Go) for server-driven tools
- Add telemetry and basic health checks
- Add end-to-end browser tests

# Useless Tools

Useless Tools is a deliberately impractical web app collection.  
The first tool is a URL Lengthener that turns normal links into absurdly long links.

## Hosting Model

This repository is deployed directly with GitHub Pages at:
- `https://uselesstools.jonfinger.com`

The main site (`jonfinger.com`) should link to this app instead of mirroring/copying app files.

## MVP Scope

Included in v1:
- Retro selector interface with 3 tool lanes
- 1 working tool: URL Lengthener
- 2 placeholders: Useless Facts, Obtuse Helper
- Redirect flow through `/r/?v=1&p=<payload>&n=<noise>`
- Static deployment via GitHub Pages

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
- `web/theme-tokens.css`: shared visual tokens for app styling
- `web/app.js`: selector interaction, URL generator, validation, copy/open actions
- `web/r/index.html`: redirect endpoint logic and error messaging
- `web/CNAME`: custom domain for GitHub Pages
- `.github/workflows/deploy-pages.yml`: deploys `web/` to GitHub Pages on push to `main`
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

## GitHub Pages Setup

1. In GitHub repo settings, set **Pages** source to **GitHub Actions**.
2. Ensure DNS for `uselesstools.jonfinger.com` points to GitHub Pages.
3. Push to `main`; workflow deploys `web/` automatically.

The workflow file is:
- `.github/workflows/deploy-pages.yml`

The domain file is:
- `web/CNAME` (`uselesstools.jonfinger.com`)

## DNS Notes (Custom Subdomain)

Add a CNAME DNS record:
- Name: `uselesstools`
- Value: `jonfinger.github.io`

After DNS propagates, GitHub Pages will attach the custom domain from `web/CNAME`.

## Roadmap

Potential next steps:
- Add second and third real tools behind selector rows
- Add optional backend mode (Python FastAPI or Go) for server-driven tools
- Add telemetry and basic health checks
- Add end-to-end browser tests

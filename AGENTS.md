# AGENTS.md

## Purpose

This file defines how contributors and coding agents should work in `useless-tools`.

## Scope

- This repository owns the source code for the Useless Tools app.
- MVP is static-only (`HTML/CSS/JS`) with no backend.
- Deployment target is `https://uselesstools.jonfinger.com` via GitHub Pages.

## Guardrails

- Keep changes focused on the requested outcome.
- Avoid unrelated refactors.
- Use ASCII by default.
- Prefer simple, dependency-free solutions for MVP.

## Visual Language

- Match the existing dark CRT motif from `jonfinger.com`.
- Keep typography and color direction consistent with the parent site.
- Add retro wheel accents, but do not introduce conflicting visual systems.

## URL Redirect Safety

- Accept only `http` and `https` targets.
- Reject malformed payloads and unsupported URL schemes.
- Never execute arbitrary script URLs.

## Editing Rules

- Small diffs over large rewrites.
- Keep public URL contract stable unless explicitly requested:
  - `/r/?v=1&p=<payload>&n=<noise>`
- Document behavior changes in `README.md`.

## Verification Checklist

Before finalizing changes:
- Main app loads and wheel interactions work.
- URL Lengthener validates and generates long URLs.
- Copy and open actions work.
- Redirect page safely resolves valid payloads and rejects invalid ones.
- GitHub Actions Pages workflow can deploy `web/`.
- `web/CNAME` stays aligned with the custom domain.

## Integration Checklist

1. Confirm `.github/workflows/deploy-pages.yml` deploys `web/`.
2. Confirm `web/CNAME` is `uselesstools.jonfinger.com`.
3. In `jonfinger.com`, link to `https://uselesstools.jonfinger.com` instead of mirrored app files.

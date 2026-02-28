# AGENTS.md

## Purpose

This file defines how contributors and coding agents should work in `useless-tools`.

## Scope

- This repository owns the source code for the Useless Tools app.
- MVP is static-only (`HTML/CSS/JS`) with no backend.
- Deployment target is `jonfinger.com/useless-tools/` via sync into the Quarto site repo.

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
  - `/useless-tools/r/?v=1&p=<payload>&n=<noise>`
- Document behavior changes in `README.md`.

## Verification Checklist

Before finalizing changes:
- Main app loads and wheel interactions work.
- URL Lengthener validates and generates long URLs.
- Copy and open actions work.
- Redirect page safely resolves valid payloads and rejects invalid ones.
- Sync script updates `jonfinger.com/useless-tools/` correctly.
- `quarto render` succeeds in `jonfinger.com` after syncing.

## Integration Checklist

1. Run `./scripts/sync_to_jonfinger.sh` from this repo.
2. Confirm files appear in `/Users/jaef/things/jonfinger.com/useless-tools/`.
3. Render the site in `jonfinger.com`.
4. Verify `/useless-tools/` and `/useless-tools/r/` in generated `docs/` output.

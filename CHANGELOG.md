# Changelog

RoodtSquared's changes to this fork of `n8n-io/n8n-heroku`.

## 2026-09-25

- `entrypoint.sh` no longer prints the database connection string at start-up. It printed the full
  `DATABASE_URL`, password included, on every dyno start. The script still parses the URL into the
  `DB_POSTGRESDB_*` variables n8n reads.
- The image is pinned to `n8nio/n8n:2.36.8`, the version already running, so this deploy keeps n8n
  where it was. The first build of the fix, still on `latest` (2.40.7 on Node 26), failed at
  `npm install` and released nothing.

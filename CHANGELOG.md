# Changelog

RoodtSquared's changes to this fork of `n8n-io/n8n-heroku`.

## 2026-09-25

- `entrypoint.sh` no longer prints the database connection string at start-up. It printed the full
  `DATABASE_URL`, password included, on every dyno start. The script still parses the URL into the
  `DB_POSTGRESDB_*` variables n8n reads.
- The image stays on `n8nio/n8n:latest` by choice until go-live, so this deploy also moves n8n from
  2.36.8 to whichever release `latest` points at when Heroku builds it.

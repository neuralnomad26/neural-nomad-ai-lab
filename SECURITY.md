# Security Policy

## Supported Versions

This is a learning portfolio repository. Security fixes are applied to the `main` branch only.

## Reporting a Vulnerability

If you discover a security issue (e.g. a notebook that executes unsafe shell commands, a script that handles credentials insecurely, or a dependency with a known CVE):

1. **Do not** open a public issue
2. Email the repository owner directly, or use [GitHub's private vulnerability reporting](https://docs.github.com/en/code-security/security-advisories/guidance-on-reporting-and-writing/privately-reporting-a-security-vulnerability)
3. Include a description of the issue and, if possible, steps to reproduce

You can expect an acknowledgement within 48 hours.

## Credential Safety

- This repository never stores API keys, tokens, or credentials in code
- All secrets are loaded from environment variables (see `.env.example`)
- Pre-commit hooks block accidental credential commits
- If you suspect a secret was accidentally committed, report it immediately so it can be revoked and removed from history

## Dependencies

Dependencies are monitored automatically via [Dependabot](.github/dependabot.yml). Security advisories trigger automated PRs to update affected packages.

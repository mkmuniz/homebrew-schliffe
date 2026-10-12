# homebrew-schliffe

Homebrew tap for [Schliffe](https://github.com/mkmuniz/schliffe-tk) — cuts token
waste in Claude Code sessions (shell command output, MCP tool results, prose).

```sh
brew install mkmuniz/schliffe/schliffe
schliffe setup        # activate: shims + Claude Code hook (preview: --dry-run)
```

The formula installs the prebuilt binary from the matching GitHub release and
verifies it against the release's `SHA256SUMS`. Bump `version` and refresh the
three `sha256` values on each release.

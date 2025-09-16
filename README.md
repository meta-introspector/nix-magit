# nix-magit

This flake provides a `nix-magit` app that runs emacs with magit.

## Usage

To run the app:

```bash
nix run .#nix-magit
```

To enter a development shell with emacs and magit available:

```bash
nix develop
```

## Fixes

This commit fixes two issues:

1.  `nix run .#nix-magit` was failing with a "Permission denied" error. This was because the `program` attribute in `flake.nix` was pointing to a directory instead of the executable. This has been fixed by pointing to the correct executable path.

2.  `nix develop` was failing because no `devShell` was defined. A `devShell` has been added to `flake.nix`.

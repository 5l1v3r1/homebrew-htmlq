homebrew-htmlq
===============
[![Build Status](https://travis-ci.org/dutchcoders/homebrew-htmlq.svg?branch=master)](https://travis-ci.org/dutchcoders/homebrew-htmlq)

Homebrew formula for htmlq.

## Usage

```bash
$ brew tap dutchcoders/homebrew-htmlq
$ brew install htmlq
```

## Troubleshooting

* Make sure you're using the right formula.  `brew info htmlq` should have a
  From line similar to this:

  ```text
  From: https://github.com/dutchcoders/homebrew-htmlq/blob/master/Formula/htmlq.rb
  ```

  If your formula points elsewhere, then you need to retap the htmlq formula.
  Do so with the following sequence of commands:

  ```text
  brew uninstall htmlq --force
  brew prune
  brew tap dutchcoders/homebrew-htmlq
  brew tap --repair
  brew install htmlq
  ```
* Run `brew update` — then try again.
* Run `brew doctor` — the doctor diagnoses common issues.
* You can create a gist log with `brew gist-logs htmlq`.
* Use `--verbose` to get the verbose output, i.e. `brew install --verbose htmlq`.
* Use `--debug` to be in the debug mode. In the debug mode, when failing, you
  can go into the interactive shell to check the building files before homebrew
  neutralizing them.

# pre-commit hook: NOCOMMIT

To use with [pre-commit](http://pre-commit.com). See [install](https://pre-commit.com/index.html#install) and [quick start](https://pre-commit.com/index.html#quick-start).

This hook will prevent committing lines which contain the keyword `NOCOMMIT` (or a custom one).

## Configure pre-commit

Add to `.pre-commit-config.yaml` in your git repo:

```yaml
- repo: https://github.com/guillemglez/pre-commit-nocommit
    rev: "0.1"
    hooks:
    - id: nocommit
```

By default the seeked keyword is `NOCOMMIT`. It can be customized by adding it as `args`:

```yaml
- repo: https://github.com/guillemglez/pre-commit-nocommit
    rev: "0.1"
    hooks:
    - id: nocommit
      args: ["MYKEYWORD"]
```

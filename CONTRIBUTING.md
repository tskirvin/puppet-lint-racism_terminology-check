# Contribution Guidelines

## Release process

1. Update `spec.version` in `puppet-lint_racism_terminology-check.gemspec`
1. Commit updated version: `git commit -m 'Release x.y.z' puppet-lint_racism_terminology-check.gemspec`
1. Create new tag: `git tag -a 'vX.Y.Z' -m 'vX.Y.Z'`
1. Push tag: `git push upstream --tags`

The Github Action release process will release the new tag to rubygems.org.

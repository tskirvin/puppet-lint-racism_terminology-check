# puppet-lint racism_terminology check

A puppet-lint extension that offers warnings when you include words that
have a racist history: 'master/slave', 'whitelist/blacklist', for
starters.  See: <https://www.ietf.org/archive/id/draft-knodel-terminology-13.txt>

This check will not match against URL's. This is by design to not flag
for every comment that may contain a github link to a repo using
'master' as the main branch.

## Installation

`gem install puppet-lint-racism_terminology-check`

### Author

[Tim Skirvin](http://wiki.killfile.org/)

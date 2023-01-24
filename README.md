# link_brew_and_phpenv

auto link brew's php to `phpenv/versions`.

## required

- setup brew
- `brew install php` or bellow optional script.
- setup phpenv

## usage

Run it when (unfortunately/accidentally) updated PHP by brew.

```
$ curl -s "https://raw.githubusercontent.com/uzulla/link_brew_and_phpenv/main/link.sh" | bash
```

### "I want to use latest one."

```
$ phepnv global php
```

> `php` is latest (in brew). 

### "I want to use older one."

```
$ phpenv global php@8.1
```

> `php@8.1` is same as brew's formula name.

## "what happen?"

```
$ phpenv versions
  system
* php (set by /Users/jhon/.anyenv/envs/phpenv/version)
  php@8.0
  php@8.1
```

## optional, update all php.

```
$ curl -s "https://raw.githubusercontent.com/uzulla/link_brew_and_phpenv/main/brew_install_all_php.sh" | bash
```

## license

MIT.

Junichi ISHIDA aka uzulla.

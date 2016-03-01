# rubocop-config

##### BBC News specific config for [Rubocop](https://github.com/bbatsov/rubocop).

> **RuboCop** is a Ruby static code analyzer. Out of the box it will enforce many of the guidelines outlined in the community [Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide).

## Installation

#### Simple (not-recommended)

> Note: if you use this method then you fill have to manually re-download the file.

Add `.rubocop.yml` to the root of your project.

#### Global

1. Clone repo.
2. Symlink `.rubocop.yml` to HOME directory:

```
ln -s path/to/repo/rubocop-config/.rubocop.yml ~/.rubocop.yml
```

## Usage


*Single File*:
```
rubocop <file_name>
```

*All Files in Project*:
```
rubocop
```

*Attempt to auto-correct offenses (take care!)*
```
rubocop -a
```

*Display Offense Names*:
```
rubocop -D
```

Find out more information about an offense name (e.g. `Style/ClassAndModuleChildren`) by searching for it within [default.yml](https://github.com/bbatsov/rubocop/blob/master/config/default.yml).

### Docker

A docker container is available for running rubocop with the latest version of the config from:

`$: docker pull bbcnews/rubocop-config`

To run it on a project, use the following command:

`$: docker run -v /path/to/your/code:/app bbcnews/rubocop-config`

> You must mount your code as a volume under `/app`.

#### Additional options

As the entry point to the container is `rubocop` you can pass any of the options along as arguments 
when running the container. For example to auto correct all files:

`$: docker run -v /path/to/your/code:/app bbcnews/rubocop-config -a`

## Output

The command shown above will highlight any *offenses* detected within the given file. Any marked with:

- **`F`** (fatal): **must** be fixed.
- **`W`** (warning): more of an subjective offense, need a good reason to ignore.
- **`C`** (convention): more of an subjective offense, need a good reason to ignore.

```
Inspecting 1 file
F

Offenses:

test.rb:1:5: F: Use snake_case for method names.
def badName
    ^^^^^^^
test.rb:2:3: W: Use a guard clause instead of wrapping the code inside a conditional expression.
  if something
  ^^
test.rb:4:5: C: end at 4, 4 is not aligned with if at 2, 2
    end
    ^^^

1 file inspected, 3 offenses detected
```

## Editor Plugins

* **Atom** - [linter-rubocop](https://atom.io/packages/linter-rubocop)
* **Vim** - [ngmy/vim-rubocop](https://github.com/ngmy/vim-rubocop)

## Contributing

Any changes to the config should be in-line with the BBC Ruby [Style Guide](https://github.com/BBC-News/responsive-news/wiki/Style-Guide:-Ruby). Feel free to make changes, please make sure to discuss them before hand.

## Help

**Email [News Frameworks](mailto:digitalnewsframeworksteam@bbc.co.uk)**.

# xdg-basedir.fish

> Fish plugin to configure XDG base directory support

This project aims to set the configuration options for apps that only have partial support for the [XDG base directory][xdg-basedir] specification.

Using XDG base directories keep apps from cluttering your `$HOME`

Read more about [XDG app support here][xdg-apps].

## Configuration

Call the `xdg-basedir` function to configure the apps you want to use the XDG Base Directory Specification.

```shell
xdg-basedir add atom
xdg-basedir add less
xdg-basedir add tmux
```

You can also setup support for multiple apps at once:

```shell
xdg-basedir add \
    atom \
    less \
    tmux
```

You can list the available apps for support:

```shell
xdg-basedir list
```

## Installation

[reel] installation:

```shell
reel in mattmc3/xdg-basedir.fish
```

[fisher] installation:

```shell
fisher add mattmc3/xdg-basedir.fish
```

[xdg-basedir]: https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
[xdg-apps]: https://wiki.archlinux.org/index.php/XDG_Base_Directory
[reel]: https://github.com/mattmc3/reel
[fisher]: https://github.com/jorgebucaran/fisher

function xdg-basedir -a cmd --description 'Manage app support for the XDG basedir spec'
    set -l usage \
        "xdg-basedir" \
        "" \
        "Comands:" \
        "list           List apps that can be added" \
        "add <apps...>  Configure the specified app to use XDG basedirs"
    set -l appdir (realpath (status --current-filename)/../apps)

    switch "$cmd"
        case "" -h --help
            string join \n $usage
        case add
            for app in $argv[2..-1]
                if test -f $appdir/$app.fish
                    builtin source $appdir/$app.fish
                else
                    echo "App not found: $app" >&2
                end
            end
        case ls list
            for f in $appdir/*
                string replace -r '\.fish$' '' (basename $f)
            end
        case \*
            echo "xdg-basedir: Unknown flag or command: \"$cmd\" (see `xdg-basedir -h`)" >&2 && return 1
    end
end

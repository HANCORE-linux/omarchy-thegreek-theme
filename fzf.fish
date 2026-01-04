set -l color00 '#d0d0c8'
set -l color01 '#db0030'
set -l color02 '#2e3125'
set -l color03 '#51573b'
set -l color04 '#DE6A41'
set -l color05 '#43432b'
set -l color06 '#363a34'
set -l color07 '#383835'
set -l color08 '#494a42'
set -l color09 '#ef597a'
set -l color0A '#7a846a'
set -l color0B '#a2a87c'
set -l color0C '#e88b5f'
set -l color0D '#a8a67b'
set -l color0E '#777b6f'
set -l color0F '#242424'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"" --color=bg+:$color00,bg:$color00,spinner:$color0E,hl:$color0D"" --color=fg:$color07,header:$color0D,info:$color0A,pointer:$color0E"" --color=marker:$color0E,fg+:$color06,prompt:$color0A,hl+:$color0D"

-- to find class : hyprctl clients
-- Negative lookahead doesnt work. instead use "negative" (ex: check steam rule)

-- ---------------------------------- GENERAL --------------------------------- #

hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name = "suppress-maximize-events",
    match = {
        class = ".*",
    },
    suppress_event = "maximize",
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
    no_focus = true,
})

-- hide xwaylandvideobridge
hl.window_rule({
    name = "xwayland-video-bridge-fixes",
    match = {
        class = "xwaylandvideobridge",
    },
    no_initial_focus = true,
    no_focus = true,
    no_anim = true,
    no_blur = true,
    max_size = "1 1",
    opacity = 0.0,
})

-- render unfocused windows (usefull when "alt tabing" online game to avoid loosing connection)
hl.window_rule({
    match = {
        class = "^(.*)$",
    },
    render_unfocused = true,
})

-- -------------------------------- FULLSCREEN -------------------------------- #
hl.window_rule({
    match = {
        title = ".*World of Warcraft.*",
    },
    fullscreen = true,
})

hl.window_rule({
    match = {
        title = ".*MONSTER HUNTER FRONTIER Z.*",
    },
    fullscreen = true,
})

hl.window_rule({
    match = {
        class = ".*steam_app_1086940.*",
    },
    fullscreen = true,
})

hl.window_rule({
    match = {
        class = ".*steam_app_1245620.*",
    },
    fullscreen = true,
})

-- ---------------------------------- TILING ---------------------------------- #
hl.window_rule({
    match = {
        class = ".*Wakfu.*",
    },
    float = false,
})

-- --------------------------------- FLOATING --------------------------------- #
hl.window_rule({
    match = {
        class = ".*nextcloud.*",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = ".*keepassxc.*",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = ".*blueman-manager.*",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = ".*nm-connection-editor.*",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = ".*coolercontrol.*",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = "org.mozilla.Thunderbird",
        title = "negative:^Mozilla Thunderbird$",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = "steam",
        title = "negative:^Steam$",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = ".*Dofus.*",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = ".*Ganymede.*",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = ".*Waydroid.*",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = ".*pavucontrol.*",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = ".*seafile.*",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = ".*EonTimer.*",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = ".*PokeFinder.*",
    },
    float = true,
})

-- ------------------------------- SIZE/POSITION ------------------------------ #
hl.window_rule({
    match = {
        class = ".*Dofus.*",
    },
    size = "2536 1365",
    center = true,
})

hl.window_rule({
    match = {
        title = "Alarme d’agenda",
    },
    size = "627 359",
    move = "1922 63",
    monitor = "0",
})

-- ------------------------ POPUP/DROPDOWN CLOSING FIX ------------------------ #
-- FIXME: causes issue if need to grant access from browser. cannot change focus
hl.window_rule({
    match = {
        title = "^Nextcloud$",
    },
    stay_focused = true,
})

-- windowrule = min_size 1 1, title:.*Nextcloud.*
-- windowrule = stay_focused on, match:class ^zoom$
-- windowrule = stayfocused, title:^menu window$, class:^zoom$

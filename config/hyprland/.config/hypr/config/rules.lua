-- to find class : hyprctl clients
-- Negative lookahead doesnt work. instead use "negative" (ex: check steam rule)

local function concat(strings)
    return table.concat(strings, "|")
end

-- ---------------------------------- GENERAL --------------------------------- #

local fullscreenTitle = {
    ".*World of Warcraft.*",
    ".*MONSTER HUNTER FRONTIER Z.*"
}

local fullscreenClass = {
    ".*steam_app_1086940.*",
    ".*steam_app_1245620.*"
}

local tilingClass = {
    ".*Wakfu.*"
}

local floatClass = {
    ".*nextcloud.*",
    ".*keepassxc.*",
    ".*blueman-manager.*",
    ".*nm-connection-editor.*",
    ".*coolercontrol.*",
    ".*Dofus.*",
    ".*Ganymede.*",
    ".*Waydroid.*",
    ".*pavucontrol.*",
    ".*seafile.*",
    ".*EonTimer.*",
    ".*PokeFinder.*",
}

-- Ignore maximize requests from all apps. You'll probably like this.
hl.window_rule({
    name = "suppress-maximize-events",
    match = {
        class = ".*",
    },
    suppress_event = "maximize",
})

-- Fix some dragging issues with XWayland
hl.window_rule({
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

hl.window_rule({
    match = {
        title = concat(fullscreenTitle),
    },
    fullscreen = true,
})

hl.window_rule({
    match = {
        class = concat(fullscreenClass),
    },
    fullscreen = true,
})

hl.window_rule({
    match = {
        class = concat(tilingClass),
    },
    float = false,
})

hl.window_rule({
    match = {
        class = concat(floatClass),
    },
    float = true,
})

-- ---------------------------------- THUNAR ---------------------------------- #

hl.window_rule({
    name = "Thunar dialogs",
    match = {
        class = "thunar|Thunar",
        title = 'Rename "*.*"|File Operation Progress|Confirm to replace files|Attention'
    },

    float = true,
    persistent_size = true,
})

-- hl.window_rule({
--     name = "Thunar stayfocused",
--     match = {
--         class = "thunar|Thunar",
--         title = 'Attention|Rename "*.*"|Create Document from .*|New .* ...|Create New Folder'
--     },

--     stay_focused = true
-- })

hl.window_rule({
    name = "Thunar move right bottom",
    match = {
        title = "^(File Operation Progress)$",
        class = "(thunar|Thunar)",
    },
    
    focus_on_activate = false,
    move = "1460 970"
})

-- hl.window_rule({
--     name = "Thunar menu force center",
--     match = {
--         title = "^(Confirm to replace files)$",
--         class = "(thunar|Thunar)"
--     },

--     center = true
-- })

-- ---------------------------------- CUSTOM ----------------------------------

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

-- hl.window_rule({
--     name = "Flameshot",
--     match = {
--         class = "flameshot"
--     },
--     float = true,
--     fullscreen = true,
-- })

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
        -- class = "", -- TODO add
    },
    size = "627 359",
    move = "1922 63",
    monitor = "0",
})

-- ------------------------ POPUP/DROPDOWN CLOSING FIX ------------------------ #
-- FIXME: causes issue if need to grant access from browser
hl.window_rule({
    match = {
        title = "^Nextcloud$",
    },
    stay_focused = true,
})

-- windowrule = min_size 1 1, title:.*Nextcloud.*
-- windowrule = stay_focused on, match:class ^zoom$
-- windowrule = stayfocused, title:^menu window$, class:^zoom$

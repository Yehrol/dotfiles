hl.config({
    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
        force_default_wallpaper = 0,
        -- Turn the screen on with the mouse or the keyboard
        -- mouse_move_enables_dpms = true
        -- key_press_enables_dpms = true
        font_family = "JetBrainsMono Nerd Font", -- Will only apply to text displayed by Hyprland, not everything
        disable_autoreload = true, -- Run 'hyprctl reload' to reload this configuration (or just restart Hyprland)
        focus_on_activate = true, -- Windows will obtain focus when created

        -- controls the VRR (Adaptive Sync) of your monitors. 
        -- 0: off 
        -- 1: on
        -- 2: fullscreen only
        -- 3: fullscreen with video or game content type
        -- vrr = 2,

        -- Disable "App not responding" dialog
        enable_anr_dialog = false,
    },
    
    dwindle = {
        preserve_split = true,
        special_scale_factor = 0.95, -- extra gaps for special workspaces
    },
    
    master = {
        new_status = "master",
    },

    ecosystem = {
        -- no_update_news = false
        no_donation_nag = true,
    },
})


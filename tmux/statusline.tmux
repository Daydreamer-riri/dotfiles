# if [[ $theme == main ]]; then
#
#     thm_e="#191724";
#     thm_surface="#1f1d2e";
#     thm_overlay="#26233a";
#     thm_muted="#6e6a86";
#     thm_subtle="#908caa";
#     thm_text="#e0def4";
#     thm_love="#eb6f92";
#     thm_gold="#f6c177";
#     thm_rose="#ebbcba";
#     thm_pine="#31748f";
#     thm_foam="#9ccfd8";
#     thm_iris="#c4a7e7";
#     thm_hl_low="#21202e";
#     thm_hl_med="#403d52";
#     thm_hl_high="#524f67";
#
# elif [[ $theme == dawn ]]; then
#
#     thm_base="#faf4ed";
#     thm_surface="#fffaf3";
#     thm_overlay="#f2e9e1";
#     thm_muted="#9893a5";
#     thm_subtle="#797593";
#     thm_text="#575279";
#     thm_love="#b4637a";
#     thm_gold="#ea9d34";
#     thm_rose="#d7827e";
#     thm_pine="#286983";
#     thm_foam="#56949f";
#     thm_iris="#907aa9";
#     thm_hl_low="#f4ede8";
#     thm_hl_med="#dfdad9";
#     thm_hl_high="#cecacd";
#
# elif [[ $theme == moon ]]; then
#
#     thm_base="#232136";
#     thm_surface="#2a273f";
#     thm_overlay="#393552";
#     thm_muted="#6e6a86";
#     thm_subtle="#908caa";
#     thm_text="#e0def4";
#     thm_love="#eb6f92";
#     thm_gold="#f6c177";
#     thm_rose="#ea9a97";
#     thm_pine="#3e8fb0";
#     thm_foam="#9ccfd8";
#     thm_iris="#c4a7e7";
#     thm_hl_low="#2a283e";
#     thm_hl_med="#44415a";
#     thm_hl_high="#56526e";
#
# fi

set -g @thm_base "#fffaf3"
set -g @thm_surface "#fffaf3"
set -g @thm_overlay "#f2e9e1"
set -g @thm_muted "#9893a5"
set -g @thm_subtle "#797593"
set -g @thm_text "#575279"
set -g @thm_love "#b4637a"
set -g @thm_gold "#ea9d34"
set -g @thm_rose "#d7827e"
set -g @thm_pine "#286983"
set -g @thm_foam "#56949f"
set -g @thm_iris "#907aa9"
set -g @thm_hl_low "#f4ede8"
set -g @thm_hl_med "#dfdad9"
set -g @thm_hl_high "#cecacd"

# vim: ft=tmux
# set -g mode-style "fg=#eee8d5,bg=#073642"
#
# set -g message-style "fg=#eee8d5,bg=#073642"
# set -g message-command-style "fg=#eee8d5,bg=#073642"
#
# set -g pane-border-style "fg=#073642"
# set -g pane-active-border-style "fg=#eee8d5"
#
# set -g status "on"
# set -g status-interval 1
set -g status-justify "centre"
#
# set -g status-style "fg=#586e75,bg=#073642"
#
set -g status-bg "#{@thm_base}"
#
# set -g status-left-length "100"
# set -g status-right-length "100"
#
# set -g status-left-style NONE
# set -g status-right-style NONE
#
set -g status-left "#[fg=#{@thm_muted},bold] #S "
set -g status-right "#[fg=#{@thm_base},bg=#{@thm_foam},bold] #(whoami) #[fg=#{@thm_muted},bg=#{@thm_base},bold] #h "
#
setw -g window-status-activity-style "underscore,fg=#839496,bg=#{@thm_base}"
setw -g window-status-separator " "
setw -g window-status-style "NONE,fg=#839496,bg=#{@thm_base}"
setw -g window-status-format '#[default] #I  #{b:pane_current_path} '
setw -g window-status-current-format '#[fg=#464261,bg=#{@thm_hl_high}] #I #[fg=#464261,bg=#f4e9de] #{b:pane_current_path} '


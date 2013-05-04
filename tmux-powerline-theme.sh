# Default Theme

if patched_font_in_use; then
	TMUX_POWERLINE_SEPARATOR_LEFT_BOLD="⮂"
	TMUX_POWERLINE_SEPARATOR_LEFT_THIN="⮃"
	TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD="⮀"
	TMUX_POWERLINE_SEPARATOR_RIGHT_THIN="⮁"
else
	TMUX_POWERLINE_SEPARATOR_LEFT_BOLD="◀"
	TMUX_POWERLINE_SEPARATOR_LEFT_THIN="❮"
	TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD="▶"
	TMUX_POWERLINE_SEPARATOR_RIGHT_THIN="❯"
fi

TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR=${TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR:-'235'}
TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR=${TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR:-'255'}

TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD}
TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_LEFT_BOLD}


# Format: segment_name background_color foreground_color [non_default_separator]

if [ -z $TMUX_POWERLINE_LEFT_STATUS_SEGMENTS ]; then
	TMUX_POWERLINE_LEFT_STATUS_SEGMENTS=(
		# "tmux_session_info 233 252 ${TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD}" \
		# "hostname 236 0" \
		# "ifstat 30 255" \
		# "ifstat_sys 30 255" \
		# "cwd 233 252" \
		# "icon 233 252" \
		"lan_ip 232 248" \
		# "wan_ip 24 255" \
		"time 236 248" \
		"utc_time 240 250" \
		"load 244 234" \
		"now_playing 248 232" \
		# "vcs_branch 248 232 ${TMUX_POWERLINE_SEPARATOR_RIGHT_THIN}" \
		# "vcs_modified 248 232 ${TMUX_POWERLINE_SEPARATOR_RIGHT_THIN}" \
		# "vcs_others 248 232" \
		# "vcs_compare 248 232 ${TMUX_POWERLINE_SEPARATOR_RIGHT_THIN}" \
		# "vcs_staged 248 232" \
	)
fi

if [ -z $TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS ]; then
	TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS=(
		#"earthquake 3 0" \
		# "pwd 89 211" \
		# "mailcount 9 255" \
		# "now_playing 234 37" \
		#"cpu 240 136" \
		# "load 16 4" \
		#"tmux_mem_cpu_load 234 136" \
		# "battery 137 127" \
		# "weather 37 255" \
		# "xkb_layout 125 117" \
		# "date_day 235 136" \
		# "date 235 136 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
		# "time 16 4 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
		# "utc_time 16 4 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
	)
fi

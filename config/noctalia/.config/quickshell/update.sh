curl -sL https://github.com/noctalia-dev/noctalia-shell/releases/latest/download/noctalia-latest.tar.gz | tar -xz --strip-components=1 -C ~/dotfiles/config/hyprland/.config/quickshell

STYLE_FILE=~/dotfiles/config/hyprland/.config/quickshell/Commons/Style.qml

if [[ ! -f "$STYLE_FILE" ]]; then
	echo "Error: missing file: $STYLE_FILE" >&2
	exit 1
fi

if ! perl -0777 -ne 'exit(0) if /function getCapsuleHeightForDensity[\s\S]*?case "spacious":\s*h = Math\.round\(barHeight \* 0\.65\);/; exit(1)' "$STYLE_FILE"; then
	echo "Error: target function pattern not found in $STYLE_FILE" >&2
	exit 1
fi

perl -0777 -i -pe 's/(function getCapsuleHeightForDensity[\s\S]*?case "spacious":\s*)h = Math\.round\(barHeight \* 0\.65\);/\1h = Math.round(barHeight * 0.8);/' "$STYLE_FILE"

if ! perl -0777 -ne 'exit(0) if /function getCapsuleHeightForDensity[\s\S]*?case "spacious":\s*h = Math\.round\(barHeight \* 0\.8\);/; exit(1)' "$STYLE_FILE"; then
	echo "Error: failed to set spacious capsule height to 0.8" >&2
	exit 1
fi
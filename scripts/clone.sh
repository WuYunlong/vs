#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "${0}")/.."
APP_ROOT=$(pwd)

function main() {
	# clone vscode and install dependencies
	cd ${APP_ROOT}
	if [ -d "lib/vscode" ]; then
		echo "./lib/vscode already exists, skip clone."
		exit 0
	fi
	mkdir -p lib
	cd lib
	git clone --depth 1 https://github.com/microsoft/vscode.git vscode
	cd vscode
	# 删除文件
	rm -rf extensions/theme-abyss
	rm -rf extensions/theme-kimbie-dark
	rm -rf extensions/theme-monokai
	rm -rf extensions/theme-monokai-dimmed
	rm -rf extensions/theme-quietlight
	rm -rf extensions/theme-red
	rm -rf extensions/theme-seti
	rm -rf extensions/theme-solarized-dark
	rm -rf extensions/theme-solarized-light
	rm -rf extensions/theme-tomorrow-night-blue

	yarn --frozen-lockfile
}

main "$@"
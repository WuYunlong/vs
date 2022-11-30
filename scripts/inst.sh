#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "${0}")/.."
APP_ROOT=$(pwd)

function main() {
  cd ${APP_ROOT}

  cd lib/vscode
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
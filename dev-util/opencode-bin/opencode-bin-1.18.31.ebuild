EAPI=8

DESCRIPTION="The open source coding agent (prebuilt binary)"
HOMEPAGE="https://opencode.ai https://github.com/anomalyco/opencode"

SRC_URI="
	amd64? (
		https://github.com/anomalyco/opencode/releases/download/v${PV}/opencode-linux-x64.tar.gz
			-> ${P}-amd64.tar.gz
	)
	arm64? (
		https://github.com/anomalyco/opencode/releases/download/v${PV}/opencode-linux-arm64.tar.gz
			-> ${P}-arm64.tar.gz
	)
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="-* ~amd64 ~arm64"

RESTRICT="mirror strip"

QA_PREBUILT="/usr/bin/opencode"

S="${WORKDIR}"

RDEPEND="app-text/ripgrep"

src_install() {
	dobin opencode
}

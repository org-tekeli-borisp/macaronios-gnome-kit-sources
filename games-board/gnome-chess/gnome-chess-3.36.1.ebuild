# Distributed under the terms of the GNU General Public License v2

EAPI=7
VALA_MIN_API_VERSION="0.36"

inherit gnome3 vala meson

DESCRIPTION="Play the classic two-player boardgame of chess"
HOMEPAGE="https://wiki.gnome.org/Apps/Chess"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="*"

IUSE="engines"

RDEPEND="
	>=dev-libs/glib-2.62.2:2
	>=gnome-base/librsvg-2.32:2[vala]
	>=x11-libs/gtk+-3.24.12:3
	engines? (
		games-board/crafty
		games-board/gnuchess
		games-board/stockfish
	)
"
DEPEND="${RDEPEND}
	$(vala_depend)
	app-text/yelp-tools
	dev-libs/appstream-glib
	>=sys-devel/gettext-0.19.8
	virtual/pkgconfig
"

src_prepare() {
	vala_src_prepare
	gnome3_src_prepare
}

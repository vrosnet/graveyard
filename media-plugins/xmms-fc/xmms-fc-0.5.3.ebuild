# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-plugins/xmms-fc/xmms-fc-0.5.3.ebuild,v 1.10 2005/09/03 23:50:47 flameeyes Exp $

inherit eutils

DESCRIPTION="Amiga Future Composer plug-in for XMMS"
HOMEPAGE="http://xmms-fc.sourceforge.net/"
SRC_URI="mirror://sourceforge/xmms-fc/${P}.tar.bz2"
RESTRICT="nomirror"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86 ~ppc ~amd64 ~sparc"

IUSE=""
DEPEND="media-sound/xmms"

src_unpack() {
	unpack ${A}
	cd ${S}
	epatch ${FILESDIR}/xmms-fc-gcc34.patch
}

src_install () {
	make DESTDIR=${D} install || die
	dodoc ChangeLog README
}

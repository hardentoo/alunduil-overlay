# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python2_7 python3_3 python3_4 )

inherit distutils-r1

DESCRIPTION="Sphinx theme used by Guzzle."
HOMEPAGE="https://github.com/guzzle/guzzle_sphinx_theme"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="examples"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND=">=dev-python/sphinx-1.2[${PYTHON_USEDEP}]"

python_install_all() {
	use examples && local EXAMPLES=( demo/. )

	distutils-r1_python_install_all
}

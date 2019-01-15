# robotpkg Makefile for:	wip/py-qpoases
# Created:			Guilhem Saurel on Web, 15 Jan 2019
#

VERSION=	3.2.1
PKGNAME=	${PKGTAG.python-}qpoases-${VERSION}
DISTNAME=	qpOASES-${VERSION}
EXTRACT_SUFX=	.zip

CATEGORIES=	optimization
MASTER_SITES=	https://www.coin-or.org/download/source/qpOASES/

HOMEPAGE=	https://projects.coin-or.org/qpOASES
COMMENT=	C++ implementation of the online active set strategy (python bindings)
LICENSE=	gnu-lgpl-v2.1
MAINTAINER=	gepetto@laas.fr

WRKSRC=		${WRKDIR}/qpOASES-${VERSION}/interfaces/python
PYDISTUTILSPKG=	yes

include ../../optimization/qpoases/depend.mk
include ../../mk/sysdep/py-numpy.mk

include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk

# robotpkg Makefile for:	optimization/py38-gurobi
# Created:			Guilhem Saurel on Tue, 12 May 2020
#

NAME=			gurobi
VERSION=		9.1.1
ARCH=			linux64
DISTNAME=		${NAME}${VERSION}_${ARCH}
PKGNAME=		${PKGTAG.python-}${NAME}-${VERSION}
MASTER_SITES=		https://packages.gurobi.com/9.1/

WRKSRC=			${WRKDIR}/${NAME}$(subst .,,${VERSION})/${ARCH}

CATEGORIES=		optimization
HOMEPAGE=		https://www.gurobi.com/
COMMENT=		The Fastest Solver
MAINTAINER=		gsaurel@laas.fr

PYDISTUTILSPKG=		yes
MAKE_ENV+=		PYTHONPATH=${PREFIX}/${PYTHON_SITELIB}
PYTHON_SELF_CONFLICT=	yes

post-install:
	${RM} -rf ${WRKSRC}/bin/python* ${WRKSRC}/lib/python* ${WRKSRC}/lib/rootcert.pem;	\
	${RUN} ${LIBTOOL} --mode=install install -d						\
	    ${DESTDIR}${PREFIX}/bin ${DESTDIR}${PREFIX}/lib;					\
	${RUN} ${LIBTOOL} --mode=install install						\
	    ${WRKSRC}/lib/* ${DESTDIR}${PREFIX}/lib;						\
	${RUN} ${LIBTOOL} --mode=install install						\
	    ${WRKSRC}/bin/* ${DESTDIR}${PREFIX}/bin

include ../../pkgtools/libtool/depend.mk
include ../../mk/sysdep/python.mk
include ../../mk/language/c.mk
include ../../mk/language/c++.mk
include ../../mk/robotpkg.mk

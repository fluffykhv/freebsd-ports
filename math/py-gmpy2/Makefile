PORTNAME=	gmpy2
DISTVERSION=	2.1.2
PORTREVISION=	1
CATEGORIES=	math python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	yuri@FreeBSD.org
COMMENT=	GMP/MPIR, MPFR, and MPC interface to Python

PATCH_SITES=	https://github.com/aleaxit/gmpy/commit/
PATCHFILES=	18b3e6a64f6cb8d3f4b3a293c9d47f63b664df1b.patch:-p1

LICENSE=	GPLv3

LIB_DEPENDS=	libgmp.so:math/gmp \
		libmpc.so:math/mpc \
		libmpfr.so:math/mpfr

USES=		localbase python
USE_PYTHON=	distutils autoplist

post-install:
	@${STRIP_CMD} ${STAGEDIR}${PYTHON_SITELIBDIR}/gmpy2/gmpy2*.so

.include <bsd.port.mk>

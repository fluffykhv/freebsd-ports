PORTNAME=	libdispatch
DISTVERSIONPREFIX=	swift-
DISTVERSION=	5.5
DISTVERSIONSUFFIX=	-RELEASE
PORTEPOCH=	1
CATEGORIES=	devel

MAINTAINER=	fluffy@FreeBSD.org
COMMENT=	Grand Central Dispatch API support library

LICENSE=	APACHE20

USES=		cmake
USE_LDCONFIG=	yes
USE_CXXSTD=	c++17

USE_GITHUB=	yes
GH_ACCOUNT=	apple
GH_PROJECT=	swift-corelibs-libdispatch

.include <bsd.port.options.mk>

.if ${OPSYS} == FreeBSD && ${OSVERSION} >= 1400000 && ${OSVERSION} < 1400079
USES+=	llvm:build
#LD?=	${_LLVM_MK_PREFIX}/bin/ld
.else
USES+=	compiler:c++17-lang
.endif

.include <bsd.port.mk>

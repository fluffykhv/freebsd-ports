# Created by: vanilla@

PORTNAME=	grpcio
PORTVERSION=	1.37.0
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	vanilla@FreeBSD.org
COMMENT=	HTTP/2-based RPC framework

LICENSE=	APACHE20

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}six>1:devel/py-six@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}protobuf>=3:devel/py-protobuf@${PY_FLAVOR}
LIB_DEPENDS=	libcares.so:dns/c-ares

USES=		compiler:c++11-lib localbase:ldflags python:3.6+ ssl
USE_PYTHON=	autoplist distutils
MAKE_ENV+=	GRPC_PYTHON_BUILD_SYSTEM_OPENSSL=true \
		GRPC_PYTHON_BUILD_SYSTEM_ZLIB=true \
		GRPC_PYTHON_BUILD_SYSTEM_CARES=true
LDFLAGS+=	-lcares

.include <bsd.port.pre.mk>

post-install:
	${STRIP_CMD} ${STAGEDIR}${PYTHONPREFIX_SITELIBDIR}/grpc/_cython/cygrpc*.so
#.if ${OSVERSION} < 1300060
	${REINPLACE_CMD} -e 's|${PYTHONPREFIX_SITELIBDIR}/\(.*\)/grpcio/grpc/_cython/cygrpc${PYTHON_EXT_SUFFIX}.so|${PYTHONPREFIX_SITELIBDIR}/grpc/_cython/cygrpc${PYTHON_EXT_SUFFIX}.so|g' ${_PYTHONPKGLIST}
#.else
#	${REINPLACE_CMD} -e 's|pc${PYTHON_EXT_SUFFIX}.so|${PYTHONPREFIX_SITELIBDIR}/grpc/_cython/cygrpc${PYTHON_EXT_SUFFIX}.so|g' ${_PYTHONPKGLIST}
#.endif

.include <bsd.port.post.mk>

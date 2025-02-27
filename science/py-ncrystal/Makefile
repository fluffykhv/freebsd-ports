PORTNAME=	ncrystal
DISTVERSIONPREFIX=	v
DISTVERSION=	4.0.2
CATEGORIES=	science # physics
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	yuri@FreeBSD.org
COMMENT=	Library for thermal neutron transport in crystals and other materials
WWW=		https://mctools.github.io/ncrystal/

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	${PY_SETUPTOOLS} \
		${PYNUMPY} \
		${PYTHON_PKGNAMEPREFIX}scikit-build-core>0:devel/py-scikit-build-core@${PY_FLAVOR} \
		cmake:devel/cmake-core
RUN_DEPENDS=	${PYNUMPY}

USES=		python
USE_PYTHON=	pep517 autoplist

USE_GITHUB=	yes
GH_ACCOUNT=	mctools

POST_PLIST=	fix-plist

post-install:
	# delete scripts (they are installed by science/ncrystal)
	@${RM} ${STAGEDIR}${PREFIX}/bin/*
	# strip binary
	#@${STRIP_CMD} ${STAGEDIR}${PYTHONPREFIX_SITELIBDIR}/NCrystal/ncrystal_pyinst_data/lib/libNCrystal.so

fix-plist: # see post-install
	@${REINPLACE_CMD} -e "s|^bin/.*$$||" ${TMPPLIST}

.include <bsd.port.mk>

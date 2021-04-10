CATEGORIES=	graphics lang
PKGNAMESUFFIX=	-imagemagick

COMMENT=	Free Pascal interface to ImageMagick

USES=		fpc

MASTERDIR=	${.CURDIR}/../../lang/fpc
WRKUNITDIR=	${FPCSRCDIR}/packages/${PKGNAMESUFFIX:S/-//}
EXTRACTUNITDIR=	${WRKUNITDIR}

OPTIONS_DEFINE=	IMAGEMAGICK
IMAGEMAGICK_DESC=	Install ImageMagick image proccesing tool
OPTIONS_DEFAULT=	IMAGEMAGICK

IMAGEMAGICK_LIB_DEPENDS=	libMagick++-${IMAGEMAGICK_DEFAULT}.so:graphics/ImageMagick${IMAGEMAGICK_DEFAULT}

.include "${MASTERDIR}/Makefile"

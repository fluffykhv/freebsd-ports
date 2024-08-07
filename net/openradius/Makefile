PORTNAME=	openradius
PORTVERSION=	0.9.12c
PORTREVISION=	4
CATEGORIES=	net
MASTER_SITES=	http://sites.e-advies.nl/openradius/download/ \
		https://BSDforge.COM/projects/source/net/openradius/

MAINTAINER=	portmaster@bsdforge.com
COMMENT=	RADIUS server with some actual documentation
WWW=		https://BSDforge.COM/projects/net/openradius/

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

LOGFILE?=	/var/log/openradius.log

CONFLICTS=	freeradius gnu-radius radiusd-cistron \
		freeradius-mysql

CC?=		gcc
CXX?=		g++
MAKE_ENV=	INST_PREFIX=${STAGEDIR}

USES=		cpe gmake shebangfix
SHEBANG_FILES=	modules/ascfile/ascfile \
		modules/radsql/radsql \
		modules/unixpasswd/unixpasswd
USE_RC_SUBR=	openradius
SUB_LIST=	LOGFILE="${LOGFILE}"

OPTIONS_DEFINE=	LDAP DOCS EXAMPLES

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MLDAP}
USES+=	ldap
PLIST_SUB+=	LDAP=""
SCRIPTS_ENV+=	USE_LDAP=yes
.else
PLIST_SUB+=	LDAP="@comment "
.endif

.include <bsd.port.pre.mk>

.if ${OPSYS} == FreeBSD && ( ${OSVERSION} >= 1400079 || ( ${OSVERSION} >= 1302505 && ${OSVERSION} < 1400000 ))
CFLAGS+=	-Wno-error=int-conversion
.endif

.if ${OPSYS} == FreeBSD && ( ${OSVERSION} >= 1400092 || ( ${OSVERSION} >= 1302507 && ${OSVERSION} < 1400000 ))
CFLAGS+=	-Wno-error=incompatible-function-pointer-types
.endif

post-install:
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/async-iface-notes ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/language.html ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/module-interface.html ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/note-behaviourfile ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/note-struct-ownership ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/using-openradius.html ${STAGEDIR}${DOCSDIR}
	${MKDIR} ${STAGEDIR}${EXAMPLESDIR}/accounts
	${INSTALL_DATA} ${WRKSRC}/examples/behaviour.sample-ldap ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/behaviour.sample-ldap-authbind ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/behaviour.sample-mysql ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/behaviour.sample-postgres ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/behaviour.sample-unixpass ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/behaviour.sample-usersfile ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/configuration.sample-ldap ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/configuration.sample-ldap-authbind ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/configuration.sample-mysql ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/configuration.sample-postgres ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/configuration.sample-unixpass ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/configuration.sample-usersfile ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/accounts/README ${STAGEDIR}${EXAMPLESDIR}/accounts
	${INSTALL_DATA} ${WRKSRC}/examples/accounts/accounts.mysql ${STAGEDIR}${EXAMPLESDIR}/accounts
	${INSTALL_DATA} ${WRKSRC}/examples/accounts/behaviour ${STAGEDIR}${EXAMPLESDIR}/accounts
	${INSTALL_DATA} ${WRKSRC}/examples/accounts/configuration ${STAGEDIR}${EXAMPLESDIR}/accounts
# Configuration, copy over to sample files
	${MKDIR} ${STAGEDIR}${ETCDIR}
.for FILE in dictionary
	${INSTALL_DATA} ${WRKSRC}/etc/${FILE} \
		${STAGEDIR}${ETCDIR}/${FILE}.sample
.endfor
# Copy over legacy config files to sample
	${MKDIR} ${STAGEDIR}${ETCDIR}/legacy
.for FILE in clients nases realms users
	${INSTALL} -m 0600 ${WRKSRC}/etc/legacy/${FILE} \
		${STAGEDIR}${ETCDIR}/legacy/${FILE}.sample
.endfor
	${MKDIR} ${STAGEDIR}${ETCDIR}/modules
.for FILE in radldap.attrmap
	${INSTALL} -m 0600 ${WRKSRC}/etc/modules/${FILE} \
		${STAGEDIR}${ETCDIR}/modules/${FILE}.sample
.endfor
	${MKDIR} ${STAGEDIR}${ETCDIR}/subdicts
.for FILE in dict.*
	${INSTALL} -m 0600 ${WRKSRC}/etc/subdicts/${FILE} \
		${STAGEDIR}${ETCDIR}/subdicts/
.endfor

.include <bsd.port.post.mk>

--- src/share/poudriere/common.sh.orig	2021-09-07 20:36:39 UTC
+++ src/share/poudriere/common.sh
@@ -1768,13 +1768,14 @@ do_portbuild_mounts() {
 	mkdir -p "${mnt}/.p/tmp"
 
 	[ -d "${CCACHE_DIR:-/nonexistent}" ] &&
-		${NULLMOUNT} ${CCACHE_DIR} ${mnt}${HOME}/.ccache
+		mkdir -p "${CCACHE_DIR}/${jname}"
+		${NULLMOUNT} ${CCACHE_DIR}/${jname} ${mnt}${HOME}/.ccache
 	[ -n "${MFSSIZE}" ] && mdmfs -t -S -o async -s ${MFSSIZE} md ${mnt}/wrkdirs
 	[ ${TMPFS_WRKDIR} -eq 1 ] && mnt_tmpfs wrkdir ${mnt}/wrkdirs
 	# Only show mounting messages once, not for every builder
 	if [ ${mnt##*/} = "ref" ]; then
 		[ -d "${CCACHE_DIR}" ] &&
-			msg "Mounting ccache from: ${CCACHE_DIR}"
+			msg "Mounting ccache from: ${CCACHE_DIR}/${jname}"
 		msg "Mounting packages from: ${PACKAGES_ROOT}"
 	fi
 

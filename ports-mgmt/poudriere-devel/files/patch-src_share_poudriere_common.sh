--- src/share/poudriere/common.sh.orig	2021-09-07 20:36:39 UTC
+++ src/share/poudriere/common.sh
@@ -2179,7 +2179,8 @@ do_portbuild_mounts() {
 	    "${mnt}/.p/var/run"
 
 	if [ -d "${CCACHE_DIR:-/nonexistent}" ]; then
-		${NULLMOUNT} ${CCACHE_DIR} ${mnt}${HOME}/.ccache
+		mkdir -p "${CCACHE_DIR}/${jname}"
+		${NULLMOUNT} ${CCACHE_DIR}/${jname} ${mnt}${HOME}/.ccache
 	fi
 	if [ -n "${MFSSIZE}" ]; then
 		mdmfs -t -S -o async -s ${MFSSIZE} md ${mnt}/wrkdirs
@@ -2196,7 +2197,7 @@ do_portbuild_mounts() {
 		msgdev="/dev/null"
 	fi
 	if [ -d "${CCACHE_DIR}" ]; then
-		${msgmount} "Mounting ccache from: ${CCACHE_DIR}"
+		${msgmount} "Mounting ccache from: ${CCACHE_DIR}/${jname}"
 	fi
 
 	mount_ports -o ro > "${msgdev}"

--- src/share/poudriere/common.sh.orig	2021-05-21 18:28:02 UTC
+++ src/share/poudriere/common.sh
@@ -5212,7 +5212,7 @@ delete_old_pkg() {
 		originspec_encode originspec "${origin}" "${pkg_dep_args}" \
 		    "${pkg_flavor}"
 		if ! originspec_is_needed_and_not_ignored "${originspec}"; then
-			if [ ${ALL} -eq 1 ]; then
+			if [ ${ALL} -eq 1 -o -n "${LISTPKGS}" ]; then
 				msg "Deleting ${COLOR_PORT}${pkg##*/}${COLOR_RESET}: no longer needed"
 				delete_pkg "${pkg}"
 			else

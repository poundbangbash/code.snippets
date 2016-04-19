#!/bin/bash
CACHE_DIR=$(getconf DARWIN_USER_CACHE_DIR)

if [ -f ${CACHE_DIR}com.apple.FontRegistry/fontregistry.session ]
then
	cp ${CACHE_DIR}com.apple.FontRegistry/fontregistry.session /private/tmp/fontcheck.db
	ACTIVE_FONTS=$(sqlite3 /private/tmp/fontcheck.db "SELECT COALESCE(MAX(font_column)+1, 0) FROM name_table")
	rm /private/tmp/fontcheck.db
	echo "Active Fonts: ${ACTIVE_FONTS}"
else
	echo "FontExplorer X Pro has not been launched yet"
fi
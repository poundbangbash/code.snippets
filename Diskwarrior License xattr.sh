#!/bin/bash
diskWarriorLocation="$3/Applications/DiskWarrior.app"
xattrName=com.alsoft.diskwarrior.glue
xattrLocation="$3/Applications/diskwarrior_license_xattr"
xattr=/usr/bin/xattr

#To extract the xattr for use in this script
#xattr -p "${xattrName}" /path/to/serialized/DiskWarrior.app > /path/to/diskwarrior_license_xattr

#Write the xattr to another file
"${xattr}" -w -x "${xattrName}" "`cat "${xattrLocation}"`" "${diskWarriorLocation}"

#Delete the xattr
/bin/rm "${xattrLocation}"

FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

inherit extrausers
EXTRA_USERS_PARAMS = "\
usermod -P abc123 root; \
"

IMAGE_INSTALL += "qt-kiosk-browser"

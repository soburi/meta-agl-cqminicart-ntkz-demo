FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
SRC_URI = " \
file://agl-demo-platform.conf \
"

do_install() {
install -d ${D}${sysconfdir}/systemd/system/multi-user.target.wants
ln -sf ${systemd_system_unitdir}/agl-qemu-runner@.service \
${D}${sysconfdir}/systemd/system/multi-user.target.wants/agl-qemu-runner@agl-demo-platform.service
install -d ${D}${sysconfdir}/agl-qemu-runner
install -m 0644 ${WORKDIR}/agl-demo-platform.conf ${D}${sysconfdir}/agl-qemu-runner/
}

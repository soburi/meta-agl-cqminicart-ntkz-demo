#FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
#SRC_URI = "file://cluster-dashboard.yaml.demo \
#"

do_install:append() {
	sed -i 's/hostname:.*/hostname: 127.0.0.1/' ${D}${sysconfdir}/xdg/AGL/cluster-dashboard.yaml.demo 
}


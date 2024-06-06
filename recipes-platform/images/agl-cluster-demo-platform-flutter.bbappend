IMAGE_INSTALL:remove = "psplash-inverted-config"
IMAGE_INSTALL:remove = "weston-ini-conf-landscape-inverted"

IMAGE_INSTALL += "\
	weston-ini-conf-landscape \
	kuksa-databroker-cli \
	kuksa-databroker \
	kuksa-databroker-agl \
	kuksa-certificates-agl \
	kuksa-dbc-feeder \
	agl-vss-helper \
	can-utils \
	"

FILES_${PN} += "${ROOT_HOME}/.config/systemd/user/*"
SYSTEMD_SERVICE_${PN}-server = "pulseaudio.socket"

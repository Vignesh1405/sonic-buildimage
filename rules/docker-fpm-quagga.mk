# docker image for fpm-quagga

DOCKER_FPM_QUAGGA = docker-fpm-quagga.gz
$(DOCKER_FPM_QUAGGA)_PATH = $(DOCKERS_PATH)/docker-fpm-quagga
$(DOCKER_FPM_QUAGGA)_DEPENDS += $(QUAGGA) $(SWSS)
$(DOCKER_FPM_QUAGGA)_LOAD_DOCKERS += $(DOCKER_CONFIG_ENGINE)

$(DOCKER_FPM_QUAGGA)_VERSION = 1.0.0
$(DOCKER_FPM_QUAGGA)_PACKAGE_NAME = fpm-quagga

SONIC_DOCKER_IMAGES += $(DOCKER_FPM_QUAGGA)

$(DOCKER_FPM_QUAGGA)_CONTAINER_NAME = bgp
$(DOCKER_FPM_QUAGGA)_RUN_OPT += --privileged -t
$(DOCKER_FPM_QUAGGA)_RUN_OPT += -v /etc/sonic:/etc/sonic:ro

$(DOCKER_FPM_QUAGGA)_FILES += $(SUPERVISOR_PROC_EXIT_LISTENER_SCRIPT)

$(DOCKER_FPM_QUAGGA)_BASE_IMAGE_FILES += vtysh:/usr/bin/vtysh
$(DOCKER_FPM_QUAGGA)_BASE_IMAGE_FILES += rvtysh:/usr/bin/rvtysh
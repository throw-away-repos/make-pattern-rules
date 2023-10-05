SHELL := /usr/bin/env -S bash -o pipefail
.DEFAULT_GOAL := all

####################################################################################################

ROOT := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

include mk/scenario1.mk
include mk/scenario2.mk

####################################################################################################

.PHONY : sep

sep :
	@echo '———————————————————————————————————————————'

####################################################################################################



.PHONY : all

all : \
		scenario1.first-scenario \
		sep \
		scenario2.second-scenario \

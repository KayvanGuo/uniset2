#!/bin/sh

uniset-start.sh -f ./uniset-unetexchange --unet-name UNetExchange \
	--confile test.xml \
	--unet-filter-field rs --unet-filter-value 2 \
	--dlog-add-levels info,crit,warn
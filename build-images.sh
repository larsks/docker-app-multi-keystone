#!/bin/sh

IMAGES='
openstack-base
openstack-client
openstack-keystone
'

for image in $IMAGES; do
	docker build -t ${image/-//} $image
done

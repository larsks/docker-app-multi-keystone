# Multiple keystone test environment

This is a docker-compose app that will spawn multiple keystone
servers.

## Build the images

Run the `build-images.sh` script.  This will create images named:

- `openstack/base`
- `openstack/keystone`
- `openstack/client`

## Boot the environment

Bring up the environment using `docker-compose`:

    $ docker-compose up

## Interacting with the environment

Start a shell in the client container:

    $ docker-compose  -f docker-compose.yml -f client.yml run client bash

This container will have access to the keystone services. You will
find credentials files in the `/config` directory:

    [root@9d6cef9b34a4 /]# find /config -type f
    /config/keystone2/stackrc
    /config/keystone1/stackrc

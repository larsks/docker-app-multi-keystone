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

Star the client container:

    $ docker exec -it dockerappmultikeystone_client_1 bash

Inside the client container, you will find credentials files located
in `/config/keystone1` and `/config/keystone2`.

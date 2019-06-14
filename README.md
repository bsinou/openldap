# OpenLDAP Docker image for testing purposes

This repository provides an easy way to generate various simple _dummy_ docker images that we use internally to test Pydio Cells backed up by an LDAP external directory.

## How To Use

## How To Build a Custom Image

### Pre-requisite

### Build & publish

Simply run following commands:

```sh
make medium # generate and publish an image with ~12k users
make tiny # generate and publish an image with ~20 users
```

## Built upon

We used the [Mockaroo](https://mockaroo.com/) to generate our set of test data.

The image we use is based on the nice [osixia/openldap:latest](https://github.com/osixia/docker-openldap) docker image that provides a running OpenLDAP in a docker container out of the box.

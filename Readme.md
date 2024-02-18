# Debian base image

This image is used as base for other images created from me.

It extends the Debian image by curl and install-autonomous.sh and replace-vars.sh from the [scripts
repository].

The timezone is set to Europe/Berlin.

## Development

To build the image locally run:

```bash
./docker-build.sh
```

[scripts repository]: https://gitlab.com/madebyTimo/scripts

# DMI-TCAT in a Docker container

The main purpose of this fork of https://github.com/digitalmethodsinitiative/dmi-tcat
is to enable a maintainer to run a working development environment from a docker container
with debugging capabilities (xdebug extension being available by default).

## Build

Export your credentials as environment variables

```
export TWITTER_CONSUMER_KEY='' \
TWITTER_CONSUMER_SECRET='' \
TWITTER_USER_TOKEN='' \
TWITTER_USER_SECRET='' \
DATABASE_PASSWORD='' \
TCAT_DATABASE_USER='' \
TCAT_DATABASE_PASSWORD='' \
TCAT_USER_USERNAME='' \
TCAT_USER_PASSWORD='' \
TCAT_ADMIN_USERNAME='' \
TCAT_ADMIN_PASSWORD='' \
CAPTURE_MODE=1
```

Build the docker image

```
# takes care of running the one-liner installation script
# from within the container
make build-image
```

## Use

Configure the application after copying the configuration template

```
cp dmi-tcat/config.php{.example,}
```

Run a container from the aforementioned image

``` 
make run-container
```

## Run

Run a terminal from within the container

``` 
make get-interactive-shell
```

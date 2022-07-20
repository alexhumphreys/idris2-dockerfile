# idris2-dockerfile

![Docker Image CI](https://github.com/alexhumphreys/idris2-dockerfile/workflows/Docker%20Image%20CI/badge.svg?event=schedule)

Nightly docker builds of master of idris2.

Find the images on Dockerhub:
- [`snazzybucket/idris2`](https://hub.docker.com/r/snazzybucket/idris2)
- [`snazzybucket/idris2api`](https://hub.docker.com/r/snazzybucket/idris2api)

## Usage

The `latest` tag should be HEAD of master at https://github.com/idris-lang/Idris2.

```
docker pull snazzybucket/idris2:latest
```

```
$ docker run --rm -it snazzybucket/idris2:latest idris2
     ____    __     _         ___
    /  _/___/ /____(_)____   |__ \
    / // __  / ___/ / ___/   __/ /     Version 0.2.1
  _/ // /_/ / /  / (__  )   / __/      https://www.idris-lang.org
 /___/\__,_/_/  /_/____/   /____/      Type :? for help

Welcome to Idris 2.  Enjoy yourself!
Main>
```

There is also docker tags in the `[git describe --tags](https://git-scm.com/docs/git-describe)` format, eg:

```
docker pull snazzybucket/idris2:v0.5.1-435-ga4b99bd8
```

This repo also includes a docker image with `idris2api` installed.

```
docker pull snazzybucket/idris2api:latest
```

## Docker Image

The image is hosted at https://hub.docker.com/r/snazzybucket/idris2, and is created from the [`Dockerfile` here](https://github.com/alexhumphreys/idris2-dockerfile).

Since the container is built nightly, not every master commit will be built. It should be possible to get a recent enough commit should you need one, and if there's a very recent change, it'll be at most 1 day till there's a docker image containing it.

If there's been no commits to master, the images are still rebuilt. I'm not sure if the docker image SHAs will remain the same, but if you pull say tag `:v0.5.1-435-ga4b99bd8` twice and get different SHAs, that's probably what happened.

The `idris2` binary in this image is the chez-scheme version.

The `idris2api` image is hosted here: https://hub.docker.com/r/snazzybucket/idris2api

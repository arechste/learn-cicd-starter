# learn-cicd-starter (Notely)
[![ci](https://github.com/arechste/learn-cicd-starter/actions/workflows/ci.yml/badge.svg?branch=addtests)](https://github.com/arechste/learn-cicd-starter/actions/workflows/ci.yml)
[![ci](https://github.com/arechste/learn-cicd-starter/actions/workflows/ci.yml/badge.svg)](https://github.com/arechste/learn-cicd-starter/actions/workflows/ci.yml)

This repo contains the starter code for the "Notely" application for the "Learn CICD" course on [Boot.dev](https://boot.dev).

## Local Development

Make sure you're on Go version 1.20+.

Create a `.env` file in the root of the project with the following contents:

```bash
PORT="8000"
```

Run the server:

```bash
go build -o notely && ./notely
```

*This starts the server in non-database mode.* It will serve a simple webpage at `http://localhost:8000`.

You do *not* need to set up a database or any interactivity on the webpage yet. Instructions for that will come later in the course!

### Make file

```bash
make build #build the binary (notely)
```

```bash
make run # build & execute binary (notely)
```

```bash
make test # run tests
```
## Testing enhancements
Write some tests 

# Misc
https://dave.cheney.net/2019/05/07/prefer-table-driven-tests

bash to see coverage of test code 
```bash
cover () {
    local t=$(mktemp -t cover)
    go test $COVERFLAGS -coverprofile=$t $@ \
        && go tool cover -func=$t \
        && unlink $t
}
```

## DOCKER

- check OS and ARCH (GOOS GOARCH)
- Makefile
- buildscript.sh
- DockerFile

## TODO's

- [x] Check why coverage badge not loading in README.md (broken link)
  - Get a working badge by -> Actions -> select workflow -> top right "..." "create status badge" - copy/paste to .md
- [ ] Assumes setups pipelines with github actions (ci.yml , cd.yml)
- [ ] auth_test.go make a working example add more tests 
- [ ] gcloud setup Artefactory Registry and Cloud Run
- [ ] Improve secrets management .env (op store)
- [ ] need gcloud account & project and planetscale mysql account and setup to work.

# learn-cicd-starter (Notely)

![code coverage badge](https://github.com/arechste/learn-ci-starter/actions/workflows/ci.yml/badge.svg)

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

[] Check why coverage badge not loading in README.md (broken link)
[] Assumes setups pipelines with github actions (ci.yml , cd.yml)
[] auth_test.go make a working example add more tests 
[] gcloud setup Artefactory Registry and Cloud Run
[] Improve secrets management .env (op store)
[] need gcloud account & project and planetscale mysql account and setup to work.

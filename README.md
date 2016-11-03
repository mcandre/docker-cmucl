# docker-cmucl - a Docker container having Common Lisp (CMUCL) and QuickLisp

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-cmucl/

# EXAMPLE

```
$ make
docker run --rm mcandre/docker-cmucl:latest lisp -quiet -batch -eval "(format t (lisp-implementation-version))"
20d (20D Unicode)
*
docker run --rm mcandre/docker-cmucl:latest lisp -quiet -batch -eval "(format t (ql:client-version))"
2015-06-16
*
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)
* [Node.js](https://nodejs.org/en/) (for dockerlint)

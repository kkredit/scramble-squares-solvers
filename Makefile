
DOCKER_BUILD_ARGS := --build-arg USER_UID=`id -u` --build-arg USER_GID=`id -g` --build-arg USER_NAME=`whoami`
DOCKER_TAG := scramble-solvers-env
DOCKER_RUN_FLAGS := -v `pwd`:/host --user=`id -u`:`id -g` --hostname scramble --rm -it
DOCKER_SENTINAL := .docker_sentinal # I know, this is an antipattern

LANGUAGES := c clojure go haskell rust

.PHONY: all docker rebuild-docker bench $(LANGUAGES) clean

all: bench

$(DOCKER_SENTINAL): Dockerfile
	docker build $(DOCKER_BUILD_ARGS) -t $(DOCKER_TAG) .
	touch $(DOCKER_SENTINAL)

docker: | $(DOCKER_SENTINAL)
	docker run $(DOCKER_RUN_FLAGS) $(DOCKER_TAG)

rebuild-docker:
	rm -f $(DOCKER_SENTINAL)
	$(MAKE) $(DOCKER_SENTINAL)

bench: | $(DOCKER_SENTINAL)
	docker run $(DOCKER_RUN_FLAGS) $(DOCKER_TAG) bash -ic "./benchmark.sh"

$(LANGUAGES):
	docker run $(DOCKER_RUN_FLAGS) $(DOCKER_TAG) bash -ic "cd $@ && make && ./bin/puzzle"

clean: | $(DOCKER_SENTINAL)
	echo $(LANGUAGES)
	rm -f $(DOCKER_SENTINAL)

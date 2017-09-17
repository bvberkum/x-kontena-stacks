export KONTENA_URL ?= $(shell . config/env.sh && echo $$KONTENA_URL )


default:

install:

check:
	kontena --version

push\:%:
	kontena stack registry push $*/kontena.yml

pull-official\:%:
	test -d ./$* || mkdir ./$*
	kontena stack registry pull kontena/$* > $*/kontena.yml


login:
	kontena cloud login
	#kontena master login $$KONTENA_URL

search\:%:
	kontena stack registry search $*


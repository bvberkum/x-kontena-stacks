export KONTENA_GRID ?= $(shell . config/env.sh && echo $$KONTENA_GRID )
export KONTENA_MASTER ?= $(shell . config/env.sh && echo $$KONTENA_MASTER )
export KONTENA_URL ?= $(shell . config/env.sh && echo $$KONTENA_URL )
export KONTENA_TOKEN ?= $(shell . config/env.sh && echo $$KONTENA_TOKEN )


default:

install:

check:
	kontena --version

push\:%:
	test -e $*/kontena.yml
	DEBUG=true kontena stack registry push $*/kontena.yml

rm\:%:
	test -e $*/kontena.yml
	DEBUG=true kontena stack registry rm $*/kontena.yml

pull-official\:%:
	test -d ./$* || mkdir ./$*
	kontena stack registry pull kontena/$* > $*/kontena.yml


login:
	DEBUG=true kontena cloud login
	DEBUG=true kontena master login $$KONTENA_URL
	#https://cloud-api.kontena.io
	#kontena master join $$KONTENA_URL
	#"$$KONTENA_URL
	#--code="$$KONTENA_TOKEN"

search\:%:
	kontena stack registry search $*


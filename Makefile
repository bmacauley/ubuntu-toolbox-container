#---------------------------
# Makefile
#---------------------------


SHELL := $(shell which bash) # set default shell

.DEFAULT: help # Running Make will run the help target

.PHONY: help clean init login
.PHONY: sbx1
.PHONY: skel



help: ## Show Help
	@grep '^[a-zA-Z]' $(MAKEFILE_LIST) | \
    sort | \
    awk -F ':.*?## ' 'NF==2 {printf "\033[36m  %-25s\033[0m %s\n", $$1, $$2}'




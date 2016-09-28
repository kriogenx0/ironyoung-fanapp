platform ?= "ios"

.PHONY: *
all:
	@echo "Making $(platform)"; \
	make plugins; make sync; rm -rf platforms; make app

testbuild:
	make plugins; rm -rf platforms; make app

app:
	@echo "Building $(platform) app"; \
	cordova platform add $(platform); \
	echo "Complete: Building $(platform) app";

plugins:
	@echo "Installing Cordova plugins"; \
	rsync -a node_modules/ plugins/; \
	echo "Complete: Installing Cordova plugins"

sync:
	@echo "Syncing rios files to www"; \
	rm -rf www/ && rsync -a path-to-react-app/ www/ --exclude node_modules/; \
	echo "Complete: Syncing rios files to www"

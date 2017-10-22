GIT_PATH := https://github.com/VirtualChip/dqr.git

help:
        @echo "Usage: make bin"

include etc/make/bin.make

publish:
	cd src/; make publish
	

pull:
        git pull $(GIT_PATH)

push:
        git push $(GIT_PATH)
	


mml: project.mml

install:
	mkdir -p ${HOME}/Documents/MapBox/project
	ln -sf "`pwd`" ${HOME}/Documents/MapBox/project/GGNPC-basemap
	mkdir -p .git/hooks
	ln -sf bin/hook .git/hooks/post-checkout
	ln -sf bin/hook .git/hooks/post-merge
	npm install && npm rebuild
	echo DATABASE_URL=postgres://ggnpc@geo.local:5432/ggnpc > .env

clean:
	rm project.mml

project.mml: project.yml
	cat project.yml | (source .env && node jsonify.js $$DATABASE_URL) > project.mml

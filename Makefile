it: build sync wait open

dev:
	npm run start

build:
	npm run build-only

preview:
	npm run preview

sync:
	aws s3 sync dist s3://li-fire.com --delete --exact-timestamps --acl public-read --color on

wait:
	sleep 5

open:
	open https://li-fire.com
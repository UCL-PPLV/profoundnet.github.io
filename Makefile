all:
	jekyll build

server:
	jekyll serve

sync:
	rsync -r --update --verbose --delete --chmod="g=rX,o=rX" build/ socrates:html.pub/profoundnet

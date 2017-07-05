export JEKYLL_VERSION=3.5

case "$1" in
	build)
		docker run --rm --volume=$PWD:/srv/jekyll -it jekyll/jekyll:$JEKYLL_VERSION jekyll build
		;;

	serve)
		docker run --rm --volume=$PWD:/srv/jekyll -it -p 4000:4000 jekyll/jekyll:$JEKYLL_VERSION jekyll server
		;;
esac

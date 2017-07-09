export JEKYLL_VERSION=3.5

case "${1:-serve}" in
	build)
		echo "Building..."
		docker run --rm --volume=$PWD:/srv/jekyll -it jekyll/jekyll:$JEKYLL_VERSION jekyll build
		;;

	serve)
		echo "Serving..."
		docker run --rm --volume=$PWD:/srv/jekyll -it -p 4000:4000 jekyll/jekyll:$JEKYLL_VERSION jekyll server
		;;
esac

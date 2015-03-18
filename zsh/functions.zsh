
mkcd () {
	test -d "$1" || mkdir "$1" && cd "$1"
}

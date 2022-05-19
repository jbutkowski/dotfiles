function whomport() {
	lsof -i :"$1"
}
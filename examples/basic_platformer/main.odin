package main
import thor "thor:engine"

main :: proc() {
	thor.init("Thor Engine Test", 1280, 720)
	defer thor.shutdown()

	for !thor.should_close() {
		thor.begin()
		// game logic + draw calls here
		thor.end()
	}
}

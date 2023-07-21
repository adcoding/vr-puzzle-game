extends Node

var book_scenes : Dictionary = {
	Types.BOOKS.BOOK_SMALL_1 : load("res://Scenes/book_one.tscn"),
	Types.BOOKS.BOOK_SMALL_2 : load("res://Scenes/book_two.tscn"),
	Types.BOOKS.BOOK_SMALL_3 : load("res://Scenes/book_three.tscn"),
	Types.BOOKS.BOOK_SMALL_4 : load("res://Scenes/book_four.tscn"),
	Types.BOOKS.BOOK_SMALL_5 : load("res://Scenes/book_five.tscn"),
}


func get_random_book() -> PackedScene:
	return book_scenes[randi() % book_scenes.size()]

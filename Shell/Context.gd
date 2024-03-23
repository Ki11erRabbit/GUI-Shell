extends Node2D

signal done(String)


@export var start: Start

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func compile():
	var output = start.compile()
	print(output)
	emit_signal("done", output)


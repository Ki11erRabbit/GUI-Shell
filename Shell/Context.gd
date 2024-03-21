extends Node2D

signal done(String)

@onready var root: Command = null
@onready var free_nodes: Dictionary = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func compile():
	if root == null:
		pass
	var output = root.compile()
	print(output)
	emit_signal("done", output)

func set_root(command):
	root = command

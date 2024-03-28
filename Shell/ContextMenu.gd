extends Node2D

class_name ContextMenu
signal create_node(Vector2)

func _init(pos: Vector2):
	position = pos

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func create_node_button_press():
	emit_signal("create_node", position)
	queue_free()

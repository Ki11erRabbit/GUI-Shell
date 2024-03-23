extends Node2D
class_name ConnectorNode

signal attach

@export var text: String
@onready var path = $Path

# Called when the node enters the scene tree for the first time.
func _ready():
	if text != null:
		if $Label == null:
			return
		$Label.text = text
		var hitbox = $Hitbox/Hitbox.shape.size
		var label = $Label.size
		if label.y < hitbox.y:
			hitbox.y = label.y
		elif hitbox.y < label.y:
			label.y = hitbox.y
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = text
	pass


var mouse_in = false

func _input(event):
	pass

func hitbox_entered(node):
	pass # Replace with function body.


func hitbox_exited(node):
	pass # Replace with function body.


func mouse_entered():
	mouse_in = true


func mouse_exited():
	mouse_in = false

func on_connect(path_to):
	path = path_to
	

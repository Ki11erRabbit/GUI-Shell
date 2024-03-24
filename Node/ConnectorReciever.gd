extends Label

var connector_name: String


# Called when the node enters the scene tree for the first time.
func _ready():
	connector_name = text
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _can_drop_data(position: Vector2, data) -> bool:
	var can_drop: bool = data is Node and data.is_in_group("DRAGGABLE")
	print("[Container] can_drop_data_has run, returning $s" % can_drop)
	return can_drop

func _drop_data(position: Vector2, data) -> void:
	print("sending attach")
	data.send_attach(get_parent())

extends Label

@export var command: Command
@export var io: String


# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("DRAGGABLE")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _get_drag_data(_position: Vector2):
	print("[Draggable] get_drag_data has run")
	return self

func send_attach(cmd: Command):
	print("sending attach signal")
	command.emit_signal("attach", cmd, io)

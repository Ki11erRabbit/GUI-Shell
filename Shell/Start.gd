extends Command

class_name Start

@export var the_command: Command


func compile() -> String:
	if the_command == null:
		return "start not set"
	return the_command.compile()
	



# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func on_attach(other: Command, _io: String):
	print("Recv attach signal")
	the_command = other

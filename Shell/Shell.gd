extends Control


@onready var output = $Output
@onready var context = $Context

# Called when the node enters the scene tree for the first time.
func _ready():
	output.connect("compile",compile)
	context.connect("done", display_code)
	context.set_root($Context/Test)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func compile():
	context.compile()

func display_code(pipeline: String):
	print(pipeline)
	output.set_text(pipeline)

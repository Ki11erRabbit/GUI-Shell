extends Control

signal compile

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_texture_button_pressed():
	emit_signal("compile")


func set_text(str: String):
	$CodeEdit.text = str
	#$CodeEdit.set_code_hint("bash")

extends Node2D

class_name Command
@export var command: String
@export var stdout: Command
@export var stderr: Command 


func compile() -> String:
	print("Compiling...")
	var compiled_stdout = compile_stdout()
	var compiled_stderr = compile_stderr()
	if compiled_stdout == null and compiled_stderr == null:
		return get_node("TextEdit").text
	elif compiled_stdout != null and compiled_stderr == null:
		return get_node("TextEdit").text + " | " + compiled_stdout
	elif compiled_stdout == null and compiled_stderr != null:
		return get_node("TextEdit").text + "2>&1 | " + compiled_stderr
	else:
		var format_string = "{ {command1} 2>&3 | {command2}; } 3>&1 | {command3}"
		var dict = {"command1": get_node("TextEdit").text, "command2": compiled_stdout, "command3": compiled_stderr}
		return format_string.format(dict)

func compile_stdout():
	if stdout == null:
		return null
	return stdout.compile()

func compile_stderr():
	if stderr == null:
		return null
	return stderr.compile()


# Called when the node enters the scene tree for the first time.
func _ready():
	$TextEdit.text = command


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

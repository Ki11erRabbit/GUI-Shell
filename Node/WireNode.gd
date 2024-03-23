

extends ConnectorNode
class_name WireNode
@export var outlet: ConnectorNode
@export var inlet: ConnectorNode

func _init(out, the_path, the_text):
	outlet = out
	path = the_path
	position = get_local_mouse_position()
	path.curve.add_point(Vector2(self.position.x, self.position.y))
	text = the_text
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if path != null:
		path.curve.pop_point()
		position = get_local_mouse_position()
		path.curve.add_point(Vector2(self.position.x, self.position.y))
		print(position)


func _input(event):
	if event.is_action_released("LeftMouseDown"):
		print("cleaning up")
		if inlet != null:
			emit_signal("attach")
		queue_free()
	

func hitbox_entered(node):
	if is_instance_of(node, InletNode):
		inlet = node
	pass # Replace with function body.


func hitbox_exited(node):
	if is_instance_of(node, InletNode):
		inlet = null
	pass # Replace with function body.


extends ConnectorNode
class_name OutletNode

var found_inlet: bool





# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _input(event):
	if mouse_in and event.is_action_pressed("LeftMouseDown"):
		path.curve.add_point(Vector2(self.position.x, self.position.y))
		add_child(WireNode.new(self, path, text))
		
	pass

func hitbox_entered(area):
	pass # Replace with function body.


func hitbox_exited(area):
	pass # Replace with function body.


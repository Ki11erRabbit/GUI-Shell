extends ConnectorNode

class_name InletNode

# Called when the node enters the scene tree for the first time.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func hitbox_entered(node):
	if is_instance_of(node, WireNode):
		path = node.path
		self.connect("attach", on_attach)

func hitbox_exited(node):
	if is_instance_of(node, WireNode):
		path = null
		self.disconnect("attach", on_attach)

func on_attach():
	path.curve.add_point(Vector2(self.position.x, self.position.y))

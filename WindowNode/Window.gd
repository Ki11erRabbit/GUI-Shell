extends CharacterBody2D


var draggingDistance
var dir
var dragging
var newPosition = Vector2()
var mouse_in = false

func mouse_entered():
	mouse_in = true

func mouse_exited():
	mouse_in = false

func _physics_process(delta):
	if dragging:
		velocity = (newPosition - position) * Vector2(30, 30)
		move_and_slide()

func _input(event):
	if event is InputEventMouseButton:
		if event.is_pressed() && mouse_in:
			draggingDistance = position.distance_to(get_viewport().get_mouse_position())
			dir = (get_viewport().get_mouse_position() - position).normalized()
			dragging = true
			newPosition = get_viewport().get_mouse_position() - draggingDistance * dir
		else:
			dragging = false
			
	elif event is InputEventMouseMotion:
		if dragging:
			newPosition = get_viewport().get_mouse_position() - draggingDistance * dir


func add_to_container(item):
	$Container.add_child(item)


@export var contents: Control

func _ready():
	add_to_container(contents)

extends Node2D
class_name Piece

@export var variant: int
@export var limited_move: bool
var current_coord: Vector2i
var movement_formulas: Array
var capture_formulas: Array

func get_movements(): 
	pass

func get_captures():
	pass

func is_limited_move():
	return limited_move

func get_coord():
	return current_coord

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if $Sprite.get_rect().has_point(to_local(event.position)):
			get_tree().get_first_node_in_group('main').selectPiece(self)

extends Node2D

var onClick: Callable

func _ready() -> void:
	$TextureButton.pressed.connect(performAction)

func performAction():
	onClick.call()

extends TileMapLayer

var capturePlay:PackedScene = load("res://src/plays/capture_play.tscn")
var movePlay:PackedScene = load("res://src/plays/move_play.tscn")

func registerNewMovePlay(fromCoord, toCoord):
	var play = movePlay.instantiate()
	play.position = map_to_local(toCoord)
	add_child(play)
	play.onClick = func(): get_tree().get_first_node_in_group("pieces").movePiece(fromCoord, toCoord)

func registerNewCapturePlay(fromCoord, toCoord):
	var play = capturePlay.instantiate()
	play.position = map_to_local(toCoord)
	add_child(play)
	play.onClick = func(): get_tree().get_first_node_in_group("pieces").capturePiece(fromCoord, toCoord)

func clearPlays():
	for child in get_children():
		child.queue_free()

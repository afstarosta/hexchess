extends TileMapLayer

var piecesDict = {}

func _ready() -> void:
	call_deferred('register_all_children')

func register_all_children():
	for child:Node2D in get_children():
		var coord = local_to_map(to_local(child.global_position))
		if coord.x > 0:
			child.variant = Variants.BLACK
			child.modulate = '515151'
			
		registerPiece(child, coord)
		child.current_coord = coord
	
	print(piecesDict)
		
func registerPiece(piece, coord):
	piecesDict[str(coord)] = piece

func getPieceInPosition(coord):
	if !piecesDict.has(str(coord)):
		return null
	return piecesDict[str(coord)]

func unregisterPiece(coord):
	var oldPiece = piecesDict[str(coord)]
	piecesDict[str(coord)] = null
	return oldPiece
	
func movePiece(oldCoord, newCoord):
	get_tree().get_first_node_in_group('main').changeTurn()
	get_tree().get_first_node_in_group('main').clearSelection()
	
	var piece = piecesDict[str(oldCoord)]
	piece.current_coord = newCoord
	
	var tween = get_tree().create_tween()
	tween.tween_property(piece, "position", map_to_local(newCoord), .3)

	piecesDict[str(newCoord)] = piecesDict[str(oldCoord)]
	unregisterPiece(oldCoord)

func capturePiece(oldCoord, newCoord):
	unregisterPiece(newCoord).queue_free()
	movePiece(oldCoord, newCoord)

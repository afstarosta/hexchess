extends Node2D

var currentSelectedPiece: Piece
var currentTurn = 0

func changeTurn():
	var newTurn = (currentTurn + 1) % 2
	currentTurn = -1
	await get_tree().create_timer(.5).timeout 
	currentTurn = newTurn
	
func selectPiece(piece):
	if piece.variant == currentTurn:
		currentSelectedPiece = piece
		$PlayPreview.clearPlays()
		renderPlayOptions(piece)

func clearSelection():
	currentSelectedPiece = null
	$PlayPreview.clearPlays()
	
func renderPlayOptions(piece: Piece):
	var movements = piece.get_movements()
	var captures = piece.get_captures()
	print(piece.current_coord)
	
	if piece.is_limited_move(): 
		renderMovementOptions(movements, piece.get_coord())
		renderCaptureOptions(captures, piece.get_coord(), piece.variant)
	else:
		renderMovementOptionsRecursive(movements, piece.get_coord(), piece.get_coord())
		renderCaptureOptionsRecursive(captures, piece.get_coord(), piece.get_coord(), piece.variant)

func renderMovementOptions(directions, position):
	for direction in directions:
		var calculated_position = direction + position
		if isValidMoveCoord(calculated_position):
			print('setting possible play at' + str(calculated_position))
			$PlayPreview.registerNewMovePlay(position, calculated_position)

func renderCaptureOptions(directions, position, variant):
	for direction in directions:
		var calculated_position = direction + position
		if isValidCaptureCoord(calculated_position, variant):
			$PlayPreview.registerNewCapturePlay(position, calculated_position)

func renderMovementOptionsRecursive(directions, position, originalPosition):
	for direction in directions:
		var calculated_position = direction + position
		if isValidMoveCoord(calculated_position):
			print('setting possible play from ' + str(position))
			$PlayPreview.registerNewMovePlay(originalPosition, calculated_position)
			renderMovementOptionsRecursive([direction], calculated_position, originalPosition)

func renderCaptureOptionsRecursive(directions, position, originalPosition,  variant):
	for direction in directions:
		var calculated_position = direction + position
		if isValidCaptureCoord(calculated_position, variant):
			print('setting possible play at' + str(calculated_position))
			$PlayPreview.registerNewCapturePlay(originalPosition, calculated_position)
		if isValidMoveCoord(calculated_position):
			renderCaptureOptionsRecursive([direction], calculated_position, originalPosition, variant)

func isValidMoveCoord(calculated_position):
	if !(calculated_position in $Board.get_used_cells()):
		return false
		
	var piece = $Pieces.getPieceInPosition(calculated_position)
	if piece == null:
		return true
		
	return false

func isValidCaptureCoord(calculated_position, pieceVariant):
	if !(calculated_position in $Board.get_used_cells()):
		return false
	var piece = $Pieces.getPieceInPosition(calculated_position)
	if piece != null and piece.variant != pieceVariant:
		return true
	return false

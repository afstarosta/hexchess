extends Piece

func get_movements():
	return [
		Directions.DIAGLEFT,
		Directions.DIAGUPLEFT,
		Directions.DIAGUPRIGHT,
		Directions.DIAGRIGHT,
		Directions.DIAGDOWNLEFT, 
		Directions.DIAGDOWNRIGHT,
	]

func get_captures():
	return [
		Directions.DIAGLEFT,
		Directions.DIAGUPLEFT,
		Directions.DIAGUPRIGHT,
		Directions.DIAGRIGHT,
		Directions.DIAGDOWNLEFT, 
		Directions.DIAGDOWNRIGHT,
	]

extends Piece

func get_movements():
	return [
		Directions.UP,
		Directions.UPRIGHT,
		Directions.UPLEFT,
		Directions.DOWN,
		Directions.DOWNRIGHT,
		Directions.DOWNLEFT,
	]

func get_captures():
	return [
		Directions.UP,
		Directions.UPRIGHT,
		Directions.UPLEFT,
		Directions.DOWN,
		Directions.DOWNRIGHT,
		Directions.DOWNLEFT,
	]

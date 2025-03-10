extends Piece

func get_movements():
	return [
		Directions.UP,
		Directions.UPLEFT,
		Directions.UPRIGHT,

		Directions.DOWN,
		Directions.DOWNRIGHT,
		Directions.DOWNLEFT,

		Directions.DIAGLEFT,
		Directions.DIAGUPLEFT,
		Directions.DIAGUPRIGHT,

		Directions.DIAGRIGHT,
		Directions.DIAGDOWNLEFT,
		Directions.DIAGDOWNRIGHT,
	]

func get_captures():
	return [
		Directions.UP,
		Directions.UPLEFT,
		Directions.UPRIGHT,

		Directions.DOWN,
		Directions.DOWNRIGHT,
		Directions.DOWNLEFT,

		Directions.DIAGLEFT,
		Directions.DIAGUPLEFT,
		Directions.DIAGUPRIGHT,

		Directions.DIAGRIGHT,
		Directions.DIAGDOWNLEFT,
		Directions.DIAGDOWNRIGHT,
	]

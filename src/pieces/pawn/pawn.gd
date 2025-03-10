extends Piece

func get_movements():
	if variant == Variants.WHITE:
		return [
			Directions.UP,
			Directions.UPRIGHT,
			Directions.UPLEFT,
		]
	return [
		Directions.DOWN,
		Directions.DOWNRIGHT,
		Directions.DOWNLEFT,
	]

func get_captures():
	if variant == Variants.WHITE:
		return [
			Directions.UPRIGHT,
			Directions.UPLEFT
		]

	return [
		Directions.DOWNRIGHT,
		Directions.DOWNLEFT
	]

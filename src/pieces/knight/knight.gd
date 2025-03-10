extends Piece

func get_movements():
	return [
		Directions.UP + Directions.UP + Directions.UPLEFT,
		Directions.UP + Directions.UP + Directions.UPRIGHT,
		
		Directions.UPLEFT + Directions.UPLEFT + Directions.UP,
		Directions.UPLEFT + Directions.UPLEFT + Directions.DOWNLEFT,
		
		Directions.DOWNLEFT + Directions.DOWNLEFT + Directions.UPLEFT,
		Directions.DOWNLEFT + Directions.DOWNLEFT + Directions.DOWN,
		
		Directions.DOWN + Directions.DOWN + Directions.DOWNLEFT,
		Directions.DOWN + Directions.DOWN + Directions.DOWNRIGHT,

		Directions.DOWNRIGHT + Directions.DOWNRIGHT + Directions.UPRIGHT,
		Directions.DOWNRIGHT + Directions.DOWNRIGHT + Directions.DOWN,
		
		Directions.UPRIGHT + Directions.UPRIGHT + Directions.UP,
		Directions.UPRIGHT + Directions.UPRIGHT + Directions.DOWNRIGHT,
	]

func get_captures():
	return [
		Directions.UP + Directions.UP + Directions.UPLEFT,
		Directions.UP + Directions.UP + Directions.UPRIGHT,
		
		Directions.UPLEFT + Directions.UPLEFT + Directions.UP,
		Directions.UPLEFT + Directions.UPLEFT + Directions.DOWNLEFT,
		
		Directions.DOWNLEFT + Directions.DOWNLEFT + Directions.UPLEFT,
		Directions.DOWNLEFT + Directions.DOWNLEFT + Directions.DOWN,
		
		Directions.DOWN + Directions.DOWN + Directions.DOWNLEFT,
		Directions.DOWN + Directions.DOWN + Directions.DOWNRIGHT,

		Directions.DOWNRIGHT + Directions.DOWNRIGHT + Directions.UPRIGHT,
		Directions.DOWNRIGHT + Directions.DOWNRIGHT + Directions.DOWN,
		
		Directions.UPRIGHT + Directions.UPRIGHT + Directions.UP,
		Directions.UPRIGHT + Directions.UPRIGHT + Directions.DOWNRIGHT,
	]

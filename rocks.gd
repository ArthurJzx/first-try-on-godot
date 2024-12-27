extends Node2D

var rng = RandomNumberGenerator.new()
var finalPos

func finalPosition():
	finalPos = rng.randi_range(-3000,3000)
func randomPosition():
	position.x = 50
	position.y = 0
	scale.x = 1
	scale.y = 1
	rotation_degrees = 0

func test():
	print(rng)

func _process(delta):
	rotation_degrees =+ 1
	translate(Vector2(-1.0, 3000))

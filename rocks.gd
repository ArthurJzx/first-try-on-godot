extends CharacterBody2D

var rng = RandomNumberGenerator.new()
var varX
var varY 

#set rendom value for size and speed of the direction
func _ready():
	varY = rng.randi_range(0, 30)
	varX = rng.randi_range(-20, -100)
	apply_scale(Vector2(rng.randi_range(1, 3), rng.randi_range(1, 3)))

func _process(delta):
	rotation_degrees =+ 1
	translate(Vector2(varX, varY))
	move_and_slide()

func _on_area_2d_area_entered(area):
	varY = rng.randi_range(0, 30)
	varX = rng.randi_range(-20, -100)
	apply_scale(Vector2(rng.randi_range(1, 3), rng.randi_range(1, 3)))
	translate(Vector2(3000, rng.randi_range(-1000, 1000)))
	print("im in")

extends CharacterBody2D

var grip = 1000
var SPEED = 100.0
func acceleration():
	grip =+ SPEED

func _physics_process(delta):
	var direction = Input.get_vector("left", "right", "up", "down")"res://icon.svg"
	if direction:
		velocity = direction * SPEED
	else:
		velocity.x * move_toward(velocity.x, grip, SPEED)
		velocity.y * move_toward(velocity.y, grip, SPEED)
	acceleration()
	move_and_slide()

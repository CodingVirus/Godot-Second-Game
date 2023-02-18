extends KinematicBody2D

var maxSpeed = 100
var velocity = Vector2.ZERO
var direction = Vector2.RIGHT

func _process(delta):
	velocity.x = (direction * maxSpeed).x	
	velocity = move_and_slide(velocity, Vector2.UP)

	$AnimatedSprite.flip_h = true if direction.x > 0 else false

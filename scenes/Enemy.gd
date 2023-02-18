extends KinematicBody2D

var maxSpeed = 25
var velocity = Vector2.ZERO
var direction = Vector2.RIGHT
var gravity = 500

func _process(delta):
	velocity.x = (direction * maxSpeed).x	
	
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)

	
	$AnimatedSprite.flip_h = true if direction.x > 0 else false

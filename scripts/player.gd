extends CharacterBody2D

@export var speed: float = 150.0

@onready var sprite = $AnimatedSprite2D # Palitan kung AnimatedSprite2D ang gamit mo

func _physics_process(_delta: float) -> void:
	# 1. Kunan ng input ang movement direction (WASD / Arrow keys)
	var input_direction: Vector2 = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	# 2. I-calculate ang velocity
	velocity = input_direction * speed

	# 3. I-move ang player at paganahin ang collision sa TileMap
	move_and_slide()

	# 4. Palitan ang Sprite direction batay sa movement
	update_sprite_direction(input_direction)

func update_sprite_direction(dir: Vector2) -> void:
	if dir == Vector2.ZERO:
		return
		
	# Kung gagamit ka ng rotation (ihaharap ang sprite sa direksyon ng lakad):
	# rotation = dir.angle()
	
	# O kung 4-frame sprite sheet ang gamit mo sa Sprite2D:
	if dir.y < 0:
		sprite.frame = 0 # UP
	elif dir.y > 0:
		sprite.frame = 1 # DOWN
	elif dir.x > 0:
		sprite.frame = 2 # RIGHT
		sprite.flip_h = false
	elif dir.x < 0:
		sprite.frame = 2 # LEFT (Ginamit ang Right frame pero naka-flip)
		sprite.flip_h = true

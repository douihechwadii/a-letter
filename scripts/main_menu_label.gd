extends Label

var time := 0.0
var speed := 2.0
var original_position: Vector2
var rotation_amount := 10.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pivot_offset = size / 2


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	time += delta * speed
	var rotation_factor = deg_to_rad(sin(time) * rotation_amount)
	rotation = rotation_factor

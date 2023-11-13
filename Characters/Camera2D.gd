extends Camera2D

@onready var player = $".."
var dash_lag : float = 2
var walk_lag : float = 6

func _physics_process(_delta):
	if player.isDashing:
		position_smoothing_speed = dash_lag
	if !player.isDashing:
		position_smoothing_speed = lerp(dash_lag, walk_lag, 0.5)

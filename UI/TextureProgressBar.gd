extends TextureProgressBar

@onready var player = get_node("/root/Game Level/Player Character")

func _process(_delta):
	self.value = player.health

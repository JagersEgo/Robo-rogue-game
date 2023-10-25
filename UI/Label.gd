extends Label

@onready var player = get_node("/root/Game Level/Player Character")

func _process(_delta):
	self.text = str("HP:        ", player.health)

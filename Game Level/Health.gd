extends BasicEnemy
class_name Health
#var health = super.getHealth()

func on_hit(dmg):
	health -= dmg

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if health <= 0:
		var scrap_instance = scrap.instantiate()
		queue_free()

extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	#Engine.physics_ticks_per_second = Engine.get_frames_per_second()
	get_tree().change_scene_to_file("res://scenes/levels/level1.tscn")

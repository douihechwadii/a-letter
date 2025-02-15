extends StaticBody2D

@onready var interactable: Area2D = $interactable
@onready var level_6_soundtrack: AudioStreamPlayer2D = $"../level_6_soundtrack"
@onready var level_6_recording: AudioStreamPlayer2D = $"../level_6_recording"

func _ready() -> void:
	interactable.interact = _on_interact
	
func _on_interact():
	level_6_soundtrack.stop()
	level_6_recording.play()
	interactable.is_interactable = false

extends StaticBody2D

@onready var interactable: Area2D = $interactable
@onready var level_8_soundtrack: AudioStreamPlayer2D = $"../level_8_soundtrack"
@onready var level_8_recording: AudioStreamPlayer2D = $"../level_8_recording"

func _ready() -> void:
	interactable.interact = _on_interact
	
func _on_interact():
	level_8_soundtrack.stop()
	level_8_recording.play()
	interactable.is_interactable = false

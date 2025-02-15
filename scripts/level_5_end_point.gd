extends StaticBody2D

@onready var interactable: Area2D = $interactable
@onready var level_5_soundtrack: AudioStreamPlayer2D = $"../level_5_soundtrack"
@onready var level_5_recording: AudioStreamPlayer2D = $"../level_5_recording"

func _ready() -> void:
	interactable.interact = _on_interact
	
func _on_interact():
	level_5_soundtrack.stop()
	level_5_recording.play()
	interactable.is_interactable = false

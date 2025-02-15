extends StaticBody2D

@onready var interactable: Area2D = $interactable
@onready var level_2_soundtrack: AudioStreamPlayer2D = $"../level_2_soundtrack"
@onready var level_2_recording: AudioStreamPlayer2D = $"../level_2_recording"

func _ready() -> void:
	interactable.interact = _on_interact
	
func _on_interact():
	level_2_soundtrack.stop()
	level_2_recording.play()
	interactable.is_interactable = false

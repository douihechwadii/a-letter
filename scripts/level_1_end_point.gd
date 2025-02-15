extends StaticBody2D

@onready var interactable: Area2D = $interactable
@onready var level_1_soundtrack: AudioStreamPlayer2D = $"../level_1_soundtrack"
@onready var level_1_recording: AudioStreamPlayer2D = $"../level_1_recording"

func _ready() -> void:
	interactable.interact = _on_interact
	
func _on_interact():
	level_1_soundtrack.stop()
	level_1_recording.play()
	interactable.is_interactable = false

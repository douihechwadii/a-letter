extends StaticBody2D

@onready var interactable: Area2D = $interactable
@onready var level_3_soundtrack: AudioStreamPlayer2D = $"../level_3_soundtrack"
@onready var level_3_recording: AudioStreamPlayer2D = $"../level_3_recording"

func _ready() -> void:
	interactable.interact = _on_interact
	
func _on_interact():
	level_3_soundtrack.stop()
	level_3_recording.play()
	interactable.is_interactable = false

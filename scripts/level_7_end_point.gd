extends StaticBody2D

@onready var interactable: Area2D = $interactable
@onready var level_7_soundtrack: AudioStreamPlayer2D = $"../level_7_soundtrack"
@onready var level_7_recording: AudioStreamPlayer2D = $"../level_7_recording"

func _ready() -> void:
	interactable.interact = _on_interact
	
func _on_interact():
	level_7_soundtrack.stop()
	level_7_recording.play()
	interactable.is_interactable = false

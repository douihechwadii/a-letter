extends StaticBody2D

@onready var interactable: Area2D = $interactable
@onready var level_4_soundtrack: AudioStreamPlayer2D = $"../level_4_soundtrack"
@onready var level_4_recording: AudioStreamPlayer2D = $"../level_4_recording"

func _ready() -> void:
	interactable.interact = _on_interact
	
func _on_interact():
	level_4_soundtrack.stop()
	level_4_recording.play()
	interactable.is_interactable = false

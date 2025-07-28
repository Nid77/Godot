extends Node2D

@onready var label := $CanvasLayer/Label

func _ready():
	label.text = "Bienvenue dans ton premier jeu Godot !"

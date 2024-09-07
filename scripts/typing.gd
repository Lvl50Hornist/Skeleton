extends FmodEventEmitter2D


# Called when the node enters the scene tree for the first time.
func _ready():
	self["event_parameter/Speaking/value"] = 1
	print("Typing")
	paused = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_pressed("Right"):
		self["event_parameter/Speaking/value"] = self["event_parameter/Speaking/value"] + 1
	if Input.is_action_pressed("Left"):
		self["event_parameter/Speaking/value"] = self["event_parameter/Speaking/value"] - 1

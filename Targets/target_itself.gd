#extends Target
#
#signal attack_target_detected
#
#@onready var timer_frozen: Timer = %Timer_Frozen
#
#
#var bool_check: bool = true
#
#func _ready() -> void:
	#super._ready()
	#Messenger.target_frozen.connect(_on_target_frozen)
	#
	#timer_frozen.timeout.connect(_on_timer_frozen_timeout)
	#
#
#func _process(_delta: float) -> void:
	#if progress_ratio >= .99:
		#reparent_to_collector()
		#
#func take_single_damage() -> void:
	#target_level -= 1
	#
	#if target_level > -1:
		#update_target(true)
	#
	#if target_level == -1:
		#print(target_level," unvisible")
		##sprite.visible = false
		#
	#else:
		#reparent_to_collector()
		#Messenger.target_destroyed.emit(self)
	#
#
#func _on_target_frozen(target) -> void:
	#if target == self:
		#timer_frozen.start(3.)
		#
#func _on_timer_frozen_timeout() -> void:
	#frozen = false
	#speed = speed_array[target_level]
	#
	#
	#
	#
##func mark_me(distance: float) -> void:
	##marked = true
	##%Label3D.text = str(distance)
	##%Label3D.visible = true
	##
##func unmark_me() -> void:
	##%Label3D.visible = false
	##marked = false

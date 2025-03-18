extends Node
var debug: bool = true
var wave_number: int = 0

var targets_on_path: Array = []

var wave_data = {
	wave_0 = [0, 0, 0, 0, 0, 0],
	wave_1 = [12, 0, 0, 0, 0, 0],
	wave_2 = [25, 0, 0, 0, 0, 0],
	wave_3 = [24, 5, 0, 0, 0, 0],
	wave_4 = [10, 24, 0, 0, 0, 0],
	wave_5 = [30, 25, 0, 0, 0, 0],
	wave_6 = [0, 0, 15, 0, 0, 0],
	wave_7 = [0, 75, 0, 0, 0, 0],
	wave_8 = [70, 70, 0, 0, 0, 0],
	wave_9 = [0, 50, 15, 0, 0, 0],
	wave_10 = [0, 0, 35, 0, 0, 0],
	wave_11 = [0, 0, 0, 15, 0, 0],
	wave_12 = [0, 25, 25, 3, 0, 0],
	wave_13 = [40, 75, 28, 0, 0, 0],
	wave_14 = [0, 0, 0, 28, 0, 0],
	wave_15 = [0, 30, 60, 0, 0, 0],
	wave_16 = [0, 75, 75, 0, 0, 0],
	wave_17 = [0, 140, 45, 0, 0, 0],
	wave_18 = [0, 30, 25, 27, 0, 0],
	wave_19 = [0, 0, 90, 0, 0, 0],
	wave_20 = [0, 0, 24, 48, 0, 0],
	wave_21 = [0, 10, 85, 35, 0, 0],
	wave_22 = [0, 0, 0, 45, 0, 0],
	wave_23 = [0, 0, 35, 64, 0, 0],
	wave_24 = [0, 30, 50, 42, 0, 0],
	wave_25 = [0, 0, 70, 53, 0, 0],
	wave_26 = [0, 0, 0, 85, 0, 0],
	wave_27 = [0, 0, 0, 0, 20, 0],
	wave_28 = [0, 0, 45, 55, 0, 0],
	wave_29 = [0, 0, 0, 125, 19, 0],
	wave_30 = [0, 0, 250, 0, 0, 0],
	wave_31 = [0, 10, 55, 0, 27, 0],
	wave_32 = [0, 0, 25, 20, 23, 0],
	wave_33 = [0, 0, 0, 150, 0, 0],
	wave_34 = [0, 0, 35, 35, 25, 0],
	wave_35 = [0, 0, 85, 110, 0, 0],
	wave_36 = [0, 0, 0, 115, 35, 0],
	wave_37 = [0, 0, 0, 0, 59, 0],
	wave_38 = [0, 0, 0, 220, 0, 0],
	wave_39 = [50, 50, 50, 50, 40, 0],
	wave_40 = [0, 0, 0, 0, 80, 0],
	wave_41 = [0, 0, 0, 0, 20, 40],
	wave_42 = [0, 0, 0, 0, 30, 50],
	wave_43 = [0, 0, 0, 150, 60, 40],
	wave_44 = [0, 0, 0, 0, 120, 0],
	wave_45 = [0, 0, 0, 0, 0, 120],
	wave_46 = [0, 0, 0, 59, 60, 60],
	wave_47 = [0, 0, 0, 79, 70, 40],
	wave_48 = [0, 0, 0, 70, 80, 80],
	wave_49 = [0, 0, 0, 99, 80, 70],
	wave_50 = [0, 0, 0, 0, 99, 100],
}

func _ready() -> void:
	#TODO:remove
	print("Change wave_data to a constant and remove debug stuff!")
	Messenger.start_next_wave.connect(_on_start_next_wave)
	Messenger.target_added_to_path.connect(_on_target_added_to_path)
	
	if debug:
		add_debug_wave_data()
	
func _on_start_next_wave():
	wave_number += 1
	
func _on_target_added_to_path() -> void:
	targets_on_path = Path.ref.get_children() 

func add_debug_wave_data():
	wave_data = {
		wave_0 = [0,  0,  0,  0,  0,  0],
		wave_1 = [10, 10, 10, 10, 10, 10],
		wave_2 = [0, 10, 0, 0, 0, 0],
		wave_3 = [0, 0, 10, 0, 0, 0],
		wave_4 = [0, 0, 10, 0, 0, 0],
		wave_5 = [0, 0, 10, 0, 0, 0],
		wave_6 = [0, 0, 10, 0, 0, 0],
		wave_7 = [0, 0, 10, 0, 0, 0],
	}

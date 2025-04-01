class_name CardBag
extends RefCounted

var cards: Array[CardResource] = []

func use_card(id: int, player: Player):
	if id < 0 || id > 3:
		push_warning("Out of range!")
		return
	
	cards[id].use(player)
	

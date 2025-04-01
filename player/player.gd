class_name Player
extends CharacterBody2D

var card_bag: CardBag = CardBag.new()

var speed = 300

func move():
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction.normalized() * speed
	move_and_slide()

func _physics_process(delta):
	move()

func _unhandled_input(event: InputEvent):
	for i in range(4):
		if event.is_action_pressed("skill_" + str(i)):
			card_bag.use_card(i, self)

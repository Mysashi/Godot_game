extends Node2D

const CENTER = Vector2(512,300)

const COLOR = Color(1, 1, 1, 1)

func _draw():
	# Define the start and end positions of the line
	var start = Vector2(100, 100)
	var end = Vector2(300, 200)

	# Draw the main line
	draw_line(start, end, Color.BLACK, 2.0)

	# Calculate the angle of the line
	var angle = (end - start).angle()

	# Define the length and width of the arrowhead
	var arrow_length = 20
	var arrow_width = 10

	# Calculate the position of the arrowhead
	var arrowhead_start = end - Vector2(arrow_length, 0).rotated(angle)
	var arrowhead_end = end

	# Draw the first arc of the arrowhead
	draw_arc(arrowhead_start, arrow_width / 2.0, angle - PI / 2, angle + PI / 2, 32, Color.BLACK, 2.0, true)

	# Draw the second arc of the arrowhead
	draw_arc(arrowhead_end, arrow_width / 2.0, angle - PI + PI / 2, angle + PI / 2, 32, Color.BLACK, 2.0, true)
	



# Set device background
Screen.backgroundColor = "#00D5C4"
	
circle = new Layer
	backgroundColor: "#1AEADA"
	borderRadius: 1000
	width: 500
	height: 500
	x: 120
	y: 300
	scale: 0
	rotation: -360
	
logo = new Layer
	width: 274
	height: 366
	x: 230
	y: 360
	image: "images/logo.png"
	scale: 0

text = new Layer
	width: 218
	height: 38
	image: "images/welcome.png"
	x: 270
	y: 860
	scale: 0
	
_00_button = new Layer
	width: 556
	height: 86
	image: "images/00-button.png"
	x: 100
	y: 1660
	
_01_button = new Layer
	width: 562
	height: 86
	image: "images/01-button.png"
	x: 100
	y: 1660
	

_02_button = new Layer
	width: 560
	height: 86
	image: "images/02-button.png"
	x: 100
	y: 1660
		

_04_button = new Layer
	width: 560
	height: 86
	image: "images/04-button.png"
	x: 100
	y: 1660
	
init = (circle, logo, text) -> 	
	circle.animate 
		properties: 
			scale: 1
		time: 6
		delay: 0.8
		curve: "spring(300,40,60)"
		
	logo.animate 
		properties: 
			scale: 1
		time: 1
		delay: 0.8
		curve: "spring(300,40,60)"
		
		
	text.animate 
		properties: 
			scale: 1
		time: 1
		delay: 1.2
		curve: "spring(200,15,0)"

	return circle + logo + text
	
second = (circle, logo, text) ->
	circle.animate 
		properties: 
			scale: 0.6
			y: 100
		delay: 3
		time: 1
		curve: "spring(100,15,0)"
		
	logo.animate 
		properties: 
			scale: 0.6
			y: 160
		delay: 3
		time: 1
		curve: "spring(100,15,0)"
		
	text.animate
		properties: 
			x: 270
			y: 570
		delay: 3
		time: 1
		curve: "spring(100,15,0)"
	
	return circle + logo + text
	
buttons = (_00_button, _01_button, _02_button, _04_button) ->
	_00_button.animate
		properties: 
			y: 660
		time: 1
		delay: 4.2
		curve: "spring(100,15,0)"
	
	_01_button.animate
		properties: 
			y: 860
		time: 1
		delay: 4.4
		curve: "spring(100,15,0)"
	
	_02_button.animate
		properties: 
			y: 960
		time: 1
		delay: 4.6
		curve: "spring(100,15,0)"
		
	_04_button.animate
		properties: 
			y: 1060
		time: 1
		delay: 4.8
		curve: "spring(100,15,0)"
		
	return _00_button + _01_button + _02_button + _04_button

init(circle, logo, text)
second(circle, logo, text)
buttons(_00_button, _01_button, _02_button, _04_button)



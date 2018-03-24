tests
testInstSize

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newClass.
	
	aRGBehavior instanceVariables: #(a b c).
	
	self assert: aRGBehavior instSize equals: 3.
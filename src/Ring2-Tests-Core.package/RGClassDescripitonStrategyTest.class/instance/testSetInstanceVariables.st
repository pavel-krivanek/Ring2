tests
testSetInstanceVariables

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newClass.
	
	aRGBehavior instanceVariables: #(a b c).
	
	self assert: aRGBehavior instVarNames equals: #(a b c).
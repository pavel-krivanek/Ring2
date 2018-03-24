tests
testInstanceVariablesString

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newClass.
	
	aRGBehavior instanceVariables: #(a b c).
	
	self assert: aRGBehavior instanceVariablesString equals: 'a b c'.
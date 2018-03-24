tests
testInstanceVariablesString

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newTrait.
	self assert: aRGBehavior instanceVariablesString equals: ''
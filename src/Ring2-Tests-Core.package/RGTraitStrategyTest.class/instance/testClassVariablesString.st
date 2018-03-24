tests
testClassVariablesString

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newTrait.

	self assert: aRGBehavior classVariablesString equals: ''


tests
testEmtpyClassVariableString

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newClass.
	self assert: aRGBehavior classVariablesString equals: ''.

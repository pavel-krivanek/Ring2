tests
testClassDescriptionMakeResolved

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newClass.
	
	self deny: (aRGBehavior hasResolved: #layout).
	aRGBehavior makeResolved.
	self assert: (aRGBehavior hasResolved: #layout).
	
	
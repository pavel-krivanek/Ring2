tests
testClassDescriptionResolvableProperties

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newClass.
	
	self assert: (aRGBehavior pvtResolvableProperties asDictionary includesKey: #layout)
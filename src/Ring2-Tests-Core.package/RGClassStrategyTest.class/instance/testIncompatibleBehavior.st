tests
testIncompatibleBehavior

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newClass.
	
	self checkIncompatible: [ 
		aRGBehavior baseClass: (aRGBehavior environment ensureClassNamed: #SomeOtherClass) ].
	self checkIncompatible: [ 
		aRGBehavior baseTrait ].
	self checkIncompatible: [ 
		aRGBehavior baseTrait: (aRGBehavior environment ensureTraitNamed: #SomeTrait) ].

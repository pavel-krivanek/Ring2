tests
testIncompatibleBehavior

	| aRG2Behavior |
	
	aRG2Behavior := RG2Behavior newClass.
	
	self checkIncompatible: [ 
		aRG2Behavior baseClass: (aRG2Behavior environment ensureClassNamed: #SomeOtherClass) ].

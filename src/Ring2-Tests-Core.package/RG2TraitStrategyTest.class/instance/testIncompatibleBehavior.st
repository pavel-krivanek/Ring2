tests
testIncompatibleBehavior

	| aRG2Behavior |
	
	aRG2Behavior := RG2Behavior newTrait.
	
	self checkIncompatible: [ 
		aRG2Behavior instanceVariables: Array new ].
	self checkIncompatible: [ 
		aRG2Behavior kindOfSubclass].
	self checkIncompatible: [ 
		aRG2Behavior removeClassVariable: (RG2ClassVariable named: #ClassVar parent: aRG2Behavior)].
	self checkIncompatible: [ 
		aRG2Behavior removeSharedPool: (aRG2Behavior environment ensureClassNamed: #SomeClass)].
	self checkIncompatible: [ 
		aRG2Behavior sharedPoolsDo: [ :sharedPool | ] ].
	self checkIncompatible: [ 
		aRG2Behavior defaultMetaClass ].
	self checkIncompatible: [ 
		aRG2Behavior innerBindingOf: #someSymbol ].

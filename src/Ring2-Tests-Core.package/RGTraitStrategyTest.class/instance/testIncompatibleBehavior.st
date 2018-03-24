tests
testIncompatibleBehavior

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newTrait.
	
	self checkIncompatible: [ 
		aRGBehavior instanceVariables: Array new ].
	self checkIncompatible: [ 
		aRGBehavior kindOfSubclass].
	self checkIncompatible: [ 
		aRGBehavior removeClassVariable: (RGClassVariable named: #ClassVar parent: aRGBehavior)].
	self checkIncompatible: [ 
		aRGBehavior removeSharedPool: (aRGBehavior environment ensureClassNamed: #SomeClass)].
	self checkIncompatible: [ 
		aRGBehavior sharedPoolsDo: [ :sharedPool | ] ].
	self checkIncompatible: [ 
		aRGBehavior defaultMetaClass ].
	self checkIncompatible: [ 
		aRGBehavior innerBindingOf: #someSymbol ].

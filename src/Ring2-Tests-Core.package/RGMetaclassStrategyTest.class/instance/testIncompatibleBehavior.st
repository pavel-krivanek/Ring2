tests
testIncompatibleBehavior

	| aRGBehavior aTrait |
	
	aRGBehavior := RGBehavior newMetaclass.
	aTrait := aRGBehavior environment ensureTraitNamed: 'SomeTrait'.
	
	self checkIncompatible: [ 
		aRGBehavior addClassVariable: (RGClassVariable named: #classVar parent: aRGBehavior) ].
	self checkIncompatible: [ 
		aRGBehavior allClassVariables ].
	self checkIncompatible: [ 
		aRGBehavior classVariableDefinitionString ].
	self checkIncompatible: [ 
		aRGBehavior classVariables ].
	self checkIncompatible: [ 
		aRGBehavior classVariables: Array new ].
	self checkIncompatible: [ 
		aRGBehavior classVariablesDo: [:classVar | ] ].
	self checkIncompatible: [ 
		aRGBehavior cleanClassVariables ].
	
	self checkIncompatible: [ 
		aRGBehavior addSharedPool: (aRGBehavior environment ensureClassNamed: #SomePool) ].
	self checkIncompatible: [ 
		aRGBehavior cleanSharedPools ].

	self checkIncompatible: [ 
		aRGBehavior category: #someCategory ].

	self checkIncompatible: [ 
		aRGBehavior classTrait ].

	self checkIncompatible: [ 
		aRGBehavior classTrait: aTrait classTrait ].

	self checkIncompatible: [ 
		aRGBehavior comment: (RGComment parent: aRGBehavior) ].

	self checkIncompatible: [ 
		aRGBehavior sharedPools: Array new ].

	self checkIncompatible: [ 
		aRGBehavior trait ].


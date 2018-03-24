tests
testIncompatibleBehavior

	| aRG2Behavior aTrait |
	
	aRG2Behavior := RG2Behavior newMetaclass.
	aTrait := aRG2Behavior environment ensureTraitNamed: 'SomeTrait'.
	
	self checkIncompatible: [ 
		aRG2Behavior addClassVariable: (RG2ClassVariable named: #classVar parent: aRG2Behavior) ].
	self checkIncompatible: [ 
		aRG2Behavior allClassVariables ].
	self checkIncompatible: [ 
		aRG2Behavior classVariableDefinitionString ].
	self checkIncompatible: [ 
		aRG2Behavior classVariables ].
	self checkIncompatible: [ 
		aRG2Behavior classVariables: Array new ].
	self checkIncompatible: [ 
		aRG2Behavior classVariablesDo: [:classVar | ] ].
	self checkIncompatible: [ 
		aRG2Behavior cleanClassVariables ].
	
	self checkIncompatible: [ 
		aRG2Behavior addSharedPool: (aRG2Behavior environment ensureClassNamed: #SomePool) ].
	self checkIncompatible: [ 
		aRG2Behavior cleanSharedPools ].

	self checkIncompatible: [ 
		aRG2Behavior category: #someCategory ].

	self checkIncompatible: [ 
		aRG2Behavior classTrait ].

	self checkIncompatible: [ 
		aRG2Behavior classTrait: aTrait classTrait ].

	self checkIncompatible: [ 
		aRG2Behavior comment: (RG2Comment parent: aRG2Behavior) ].

	self checkIncompatible: [ 
		aRG2Behavior sharedPools: Array new ].

	self checkIncompatible: [ 
		aRG2Behavior trait ].


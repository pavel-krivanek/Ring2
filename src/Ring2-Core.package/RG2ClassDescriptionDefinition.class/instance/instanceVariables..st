as yet unclassified
instanceVariables: aCollectionOfSymbols

	"specify instance variable names"
	
	(self hasUnresolved: #layout)
		ifTrue: [ self layout: (RG2FixedLayoutDefinition parent: self)]
		ifFalse: [ self ensure: (self layout isPointerLayout) ].
	
	aCollectionOfSymbols do: [ :instVarName |
		layout addSlot: (RG2InstanceVariableSlotDefinition named: instVarName asSymbol parent: self)].
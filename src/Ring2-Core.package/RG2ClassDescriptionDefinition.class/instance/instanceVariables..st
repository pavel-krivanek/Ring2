as yet unclassified
instanceVariables: aCollectionOfSymbols

	"specify instance variable names"

	(self hasUnresolved: #layout)
		ifTrue: [ self layout: (RG2FixedLayoutDefinition parent: self)].
		
	(self layout isPointerLayout not and: [ aCollectionOfSymbols isEmpty ])
		ifTrue: [ ^ self ].
		
	self layout cleanSlots.

	aCollectionOfSymbols do: [ :instVarName |
		layout addSlot: (RG2InstanceVariableSlotDefinition named: instVarName asSymbol parent: self)].
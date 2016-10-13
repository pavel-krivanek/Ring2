tests
testUnknownSlots

	| env slot |
	
	env := RG2Environment new.
	env backend: (RG2ReadOnlyImageBackend for: env).
	
	slot := (SlotExamplePerson slotNamed: #directedMovies) asRing2MinimalDefinitionIn: env.
	self assert: slot isSlot.
	self assert: slot name equals: #directedMovies.
	self assert: slot expression equals: 'ToManyRelationSlot inverse: #director inClass: #SlotExampleMovie'.
	self assert: slot parent isLayout.
	self assert: slot parent isFixedLayout.
	self assert: slot parent parent name equals: #SlotExamplePerson.
	
	

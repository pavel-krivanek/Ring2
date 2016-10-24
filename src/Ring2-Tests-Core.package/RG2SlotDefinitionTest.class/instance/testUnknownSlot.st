tests
testUnknownSlot

	| slot expression | 
	slot  := RG2UnknownSlotDefinition unnamed.
	self assert: (slot isRing2Resolved).
	self assert: (slot hasUnresolvedAll: #(name expression)).
	self assert: (slot isSlot).
	expression := 'ToManyRelationSlot inverse: #director inClass: #SlotExampleMovie'.
	slot expression: expression.
	self assert: slot expression equals: expression.
	
private - backend access
pvtRemoveSlot: aRG2SlotDefinition

	self environment verifyOwnership: aRG2SlotDefinition.
	
	slots remove: aRG2SlotDefinition.
	

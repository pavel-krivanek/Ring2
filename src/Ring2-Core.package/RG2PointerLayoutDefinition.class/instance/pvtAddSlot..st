private - backend access
pvtAddSlot: aRG2SlotDefinition

	self environment verifyOwnership: aRG2SlotDefinition.
	
	slots isRing2Resolved ifFalse: [ 
		self pvtCleanSlots  ].
	
	slots add: aRG2SlotDefinition.	
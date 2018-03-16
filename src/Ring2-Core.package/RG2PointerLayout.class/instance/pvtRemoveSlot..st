private - backend access
pvtRemoveSlot: aRG2Slot

	self environment verifyOwnership: aRG2Slot.
	
	slots remove: aRG2Slot.
	

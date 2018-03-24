private - backend access
pvtRemoveSlot: aRGSlot

	self environment verifyOwnership: aRGSlot.
	
	slots remove: aRGSlot.
	

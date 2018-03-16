private - backend access
pvtAddSlot: aRG2Slot

	self environment verifyOwnership: aRG2Slot.
	
	slots isRing2Resolved ifFalse: [ 
		self pvtCleanSlots  ].
	
	slots add: aRG2Slot.	
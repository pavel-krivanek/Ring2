private - backend access
pvtAddSlot: anRGSlot

	self environment verifyOwnership: anRGSlot.
	
	slots isRing2Resolved ifFalse: [ 
		self pvtCleanSlots  ].
	
	slots add: anRGSlot.	
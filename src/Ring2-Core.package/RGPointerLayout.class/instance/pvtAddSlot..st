private - backend access
pvtAddSlot: aRGSlot

	self environment verifyOwnership: aRGSlot.
	
	slots isRing2Resolved ifFalse: [ 
		self pvtCleanSlots  ].
	
	slots add: aRGSlot.	
accessing - backend
removeSlot: aRG2Slot

	self parent announceDefinitionChangeDuring: [ 
		self backend forBehavior removeSlot: aRG2Slot from: self ].
accessing - backend
addSlot: aRG2Slot 

	self parent announceDefinitionChangeDuring: [ 
		self backend forBehavior addSlot: aRG2Slot to: self ].
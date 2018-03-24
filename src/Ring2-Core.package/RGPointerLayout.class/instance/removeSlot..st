accessing - backend
removeSlot: aRGSlot

	self parent announceDefinitionChangeDuring: [ 
		self backend forBehavior removeSlot: aRGSlot from: self ].
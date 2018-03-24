accessing - backend
addSlot: aRGSlot 

	self parent announceDefinitionChangeDuring: [ 
		self backend forBehavior addSlot: aRGSlot to: self ].
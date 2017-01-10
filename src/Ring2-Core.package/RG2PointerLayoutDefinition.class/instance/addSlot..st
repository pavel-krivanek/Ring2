accessing - backend
addSlot: aRG2SlotDefinition 

	self parent announceDefinitionChangeDuring: [ 
		self backend forBehavior addSlot: aRG2SlotDefinition to: self ].
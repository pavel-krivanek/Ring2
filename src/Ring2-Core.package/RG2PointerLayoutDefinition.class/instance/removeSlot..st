accessing - backend
removeSlot: aRG2SlotDefinition

	self parent announceDefinitionChangeDuring: [ 
		self backend forBehavior removeSlot: aRG2SlotDefinition from: self ].
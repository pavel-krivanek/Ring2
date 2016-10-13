accessing - backend
removeSlot: aRG2SlotDefinition

	self backend forBehavior removeSlot: aRG2SlotDefinition from: self.
	
	self announcer behaviorDefinitionModified: self parent.
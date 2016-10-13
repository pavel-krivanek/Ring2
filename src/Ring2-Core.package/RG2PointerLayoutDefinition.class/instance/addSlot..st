accessing - backend
addSlot: aRG2SlotDefinition 

	self backend forBehavior addSlot: aRG2SlotDefinition to: self.
	
	self announcer behaviorDefinitionModified: self parent.
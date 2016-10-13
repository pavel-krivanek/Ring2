accessing - backend
cleanSlots

	self backend forBehavior cleanSlotsFor: self.
	
	self announcer behaviorDefinitionModified: self parent.
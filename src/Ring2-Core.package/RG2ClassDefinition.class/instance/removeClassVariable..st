accessing - backend
removeClassVariable: aRG2InstanceVariableDefinition

	self backend forBehavior removeClassVariable: aRG2InstanceVariableDefinition from: self.
	
	self announcer behaviorDefinitionModified: self.
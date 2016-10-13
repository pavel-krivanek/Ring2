accessing - backend
superclass: aRG2BehaviorDefinition

	self backend forBehavior setSuperclassFor: self to: aRG2BehaviorDefinition.
	
	self announcer behaviorDefinitionModified: self.
accessing - backend
removeBehavior: aRG2BehaviorDefinition

	self backend forEnvironment removeBehavior: aRG2BehaviorDefinition from: self.
	
	self announcer behaviorRemoved: aRG2BehaviorDefinition
accessing - backend
superclass: aRG2BehaviorDefinition

	self announceDefinitionChangeDuring: [ 
		self backend forBehavior setSuperclassFor: self to: aRG2BehaviorDefinition ].
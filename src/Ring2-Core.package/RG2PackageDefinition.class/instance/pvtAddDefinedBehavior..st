private - backend interface
pvtAddDefinedBehavior: aRG2BehaviorDefinition

	self environment verifyOwnership: aRG2BehaviorDefinition.
	
	definedBehaviors isRing2Resolved ifFalse: [ 
		self pvtCleanDefinedBehaviors  ].
	
	definedBehaviors add: aRG2BehaviorDefinition.	
	
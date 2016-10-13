private - backend interface
pvtAddBehavior: aRG2BehaviorDefinition

	self environment verifyOwnership: aRG2BehaviorDefinition.
	
	behaviors isRing2Resolved ifFalse: [ 
		self pvtCleanBehaviors ].
	
	(behaviors includes: aRG2BehaviorDefinition)
		ifFalse: [ 
			behaviors add: aRG2BehaviorDefinition.
			self announcer behaviorAdded: aRG2BehaviorDefinition].
		
	
		
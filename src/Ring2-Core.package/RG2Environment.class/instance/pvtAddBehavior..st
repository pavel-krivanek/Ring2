private - backend interface
pvtAddBehavior: aRG2Behavior

	self environment verifyOwnership: aRG2Behavior.
	
	behaviors isRing2Resolved ifFalse: [ 
		self pvtCleanBehaviors ].
	
	(behaviors includes: aRG2Behavior)
		ifFalse: [ 
			behaviors add: aRG2Behavior.
			self announcer behaviorAdded: aRG2Behavior].
		
	
		
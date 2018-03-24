private - backend interface
pvtAddBehavior: anRGBehavior

	self environment verifyOwnership: anRGBehavior.
	
	behaviors isRing2Resolved ifFalse: [ 
		self pvtCleanBehaviors ].
	
	(behaviors includes: anRGBehavior)
		ifFalse: [ 
			behaviors add: anRGBehavior.
			self announcer behaviorAdded: anRGBehavior].
		
	
		
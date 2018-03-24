private - backend interface
pvtAddBehavior: aRGBehavior

	self environment verifyOwnership: aRGBehavior.
	
	behaviors isRing2Resolved ifFalse: [ 
		self pvtCleanBehaviors ].
	
	(behaviors includes: aRGBehavior)
		ifFalse: [ 
			behaviors add: aRGBehavior.
			self announcer behaviorAdded: aRGBehavior].
		
	
		
private - backend interface
pvtAddLocalMethod: aRGMethod

	self environment verifyOwnership: aRGMethod.
	
	localMethods isRing2Resolved ifFalse: [ 
		self pvtCleanLocalMethods ].

	(self hasResolved: #tagsForMethods) 
		ifFalse: [ self pvtCleanTagsForMethods ].

	aRGMethod tags do: [ :aTag |
		self pvtAddMethodTag: aTag ].

	localMethods add: aRGMethod.	
	
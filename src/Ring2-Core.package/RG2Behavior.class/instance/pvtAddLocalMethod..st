private - backend interface
pvtAddLocalMethod: aRG2Method

	self environment verifyOwnership: aRG2Method.
	
	localMethods isRing2Resolved ifFalse: [ 
		self pvtCleanLocalMethods ].

	(self hasResolved: #tagsForMethods) 
		ifFalse: [ self pvtCleanTagsForMethods ].

	aRG2Method tags do: [ :aTag |
		self pvtAddMethodTag: aTag ].

	localMethods add: aRG2Method.	
	
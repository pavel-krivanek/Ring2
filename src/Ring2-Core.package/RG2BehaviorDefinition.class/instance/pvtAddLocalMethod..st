private - backend interface
pvtAddLocalMethod: aRG2MethodDefinition

	self environment verifyOwnership: aRG2MethodDefinition.
	
	localMethods isRing2Resolved ifFalse: [ 
		self pvtCleanLocalMethods ].

	(self hasResolved: #tagsForMethods) 
		ifFalse: [ self pvtCleanTagsForMethods ].

	aRG2MethodDefinition tags do: [ :aTag |
		self pvtAddMethodTag: aTag ].

	aRG2MethodDefinition parent: self. 
	localMethods add: aRG2MethodDefinition.	
	
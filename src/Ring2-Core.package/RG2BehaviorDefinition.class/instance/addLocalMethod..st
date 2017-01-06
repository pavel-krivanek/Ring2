accessing - backend
addLocalMethod: aRG2MethodDefinition 

	self backend forBehavior addLocalMethod: aRG2MethodDefinition to: self.
	
	(self hasResolved: #tagsForMethods) 
		ifFalse: [ self cleanTagsForMethods ].

	aRG2MethodDefinition tags do: [ :aTag |
		self addMethodTag: aTag ].
	
	self announcer methodAdded: aRG2MethodDefinition.

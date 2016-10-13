accessing
extendedBehaviors
	
	^ (self extensionMethods collect: #parent) collect: [:behavior |
		behavior isClass 
			ifTrue: [behavior baseClass]
			ifFalse: [ behavior ]]
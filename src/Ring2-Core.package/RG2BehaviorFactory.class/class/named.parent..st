instance creation
named: aString parent: anRGObject

	^ (RG2Behavior named: aString parent: anRGObject  behaviorStrategy: self newStrategy)
		yourself
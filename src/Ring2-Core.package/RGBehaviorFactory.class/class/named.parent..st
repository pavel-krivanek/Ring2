instance creation
named: aString parent: anRGObject

	^ (RGBehavior named: aString parent: anRGObject  behaviorStrategy: self newStrategy)
		yourself
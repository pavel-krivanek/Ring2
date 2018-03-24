instance creation
parent: anRGObject

	^ (RGBehavior parent: anRGObject behaviorStrategy: self newStrategy)
		yourself
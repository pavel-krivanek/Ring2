accessing
behaviorStrategy: anObject

	behaviorStrategy := anObject.
	behaviorStrategy owner: self.
	behaviorStrategy initializeUnresolved.
	
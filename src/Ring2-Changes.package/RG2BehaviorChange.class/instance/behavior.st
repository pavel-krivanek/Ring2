accessing
behavior

	behavior ifNotNil: [ ^ behavior ].
	
	^ self environment ask behaviorNamed: behaviorName.
	
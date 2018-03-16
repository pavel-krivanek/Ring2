private - backend interface
pvtSuperclass: aRG2Behavior

	aRG2Behavior ifNotNil: [ 
		self environment verifyOwnership: aRG2Behavior.].

	^ superclass := aRG2Behavior
	
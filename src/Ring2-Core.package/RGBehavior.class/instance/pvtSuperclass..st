private - backend interface
pvtSuperclass: aRGBehavior

	aRGBehavior ifNotNil: [ 
		self environment verifyOwnership: aRGBehavior.].

	^ superclass := aRGBehavior
	
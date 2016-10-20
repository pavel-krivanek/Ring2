private - backend interface
pvtSuperclass: aRG2BehaviorDefinition

	aRG2BehaviorDefinition ifNotNil: [ 
		self environment verifyOwnership: aRG2BehaviorDefinition.].

	^ superclass := aRG2BehaviorDefinition
	
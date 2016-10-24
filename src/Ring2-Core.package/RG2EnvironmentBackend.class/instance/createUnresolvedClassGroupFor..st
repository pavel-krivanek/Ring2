unresolved objects
createUnresolvedClassGroupFor: aRG2BehaviorDefinition 

	^ 	aRG2BehaviorDefinition isMeta
		ifFalse: [ aRG2BehaviorDefinition ]
		ifTrue: [ aRG2BehaviorDefinition metaclass].

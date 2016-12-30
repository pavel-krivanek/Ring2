unresolved objects
createUnresolvedTraitGroupFor: aRG2BehaviorDefinition 

	^ aRG2BehaviorDefinition isMeta
		ifFalse: [ aRG2BehaviorDefinition ]
		ifTrue: [ aRG2BehaviorDefinition classTrait].

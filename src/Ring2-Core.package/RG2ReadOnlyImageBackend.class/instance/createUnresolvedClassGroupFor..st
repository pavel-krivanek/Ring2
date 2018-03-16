unresolved objects
createUnresolvedClassGroupFor: aRG2Behavior 

	^ 	aRG2Behavior isMeta
		ifFalse: [ aRG2Behavior ]
		ifTrue: [ aRG2Behavior metaclass].

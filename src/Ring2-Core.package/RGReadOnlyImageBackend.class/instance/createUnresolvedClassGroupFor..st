unresolved objects
createUnresolvedClassGroupFor: aRGBehavior 

	^ 	aRGBehavior isMeta
		ifFalse: [ aRGBehavior ]
		ifTrue: [ aRGBehavior metaclass].

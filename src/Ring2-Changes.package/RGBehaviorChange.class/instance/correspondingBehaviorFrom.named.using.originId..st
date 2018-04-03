private
correspondingBehaviorFrom: anRGEnvironment named: aBehaviorName using: resolvingContext originId: anId

	| behaviorKnownToContext |

	behaviorKnownToContext := anId 
		ifNotNil: [ resolvingContext originFor: anId ifAbsent: [ nil ] ].
		
	^ behaviorKnownToContext 		
		ifNil: [ self correspondingBehaviorFrom: anRGEnvironment named: aBehaviorName   ]


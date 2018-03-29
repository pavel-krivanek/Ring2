private
correspondingBehaviorFrom: anRGEnvironment named: aBehaviorName using: resolvingContext originId: anId

	| behaviorKnowToContext |

	behaviorKnowToContext := anId 
		ifNotNil: [ resolvingContext originFor: anId ifAbsent: [ nil ] ].
		
	^ behaviorKnowToContext 		
		ifNil: [  self correspondingBehaviorFrom: anRGEnvironment named: aBehaviorName   ]


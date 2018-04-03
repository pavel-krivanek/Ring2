accessing
correspondingMethodFrom: anRGEnvironment named: aMethodName in: aBehaviorName using: resolvingContext originId: anId

	| methodKnownToContext |

	methodKnownToContext := anId 
		ifNotNil: [ resolvingContext originFor: anId ifAbsent: [ nil ] ].
		
	^ methodKnownToContext 		
		ifNil: [ self correspondingMethodFrom: anRGEnvironment named: aMethodName in: aBehaviorName  ]


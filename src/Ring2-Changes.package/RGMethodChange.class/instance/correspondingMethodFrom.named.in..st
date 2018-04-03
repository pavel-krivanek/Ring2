accessing
correspondingMethodFrom: anRGEnvironment named: aMethodNameName in: aBehaviorName

	^ self hasResolvedOriginName 	
		ifTrue: [ (anRGEnvironment ask behaviorNamed: aBehaviorName) localMethodNamed: aMethodNameName ifAbsent: [ nil ] ]
		ifFalse: [ nil ] 
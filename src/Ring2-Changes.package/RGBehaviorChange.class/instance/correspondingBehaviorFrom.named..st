private
correspondingBehaviorFrom: anRGEnvironment named: aBehaviorName

	^ self hasResolvedOriginName 	
		ifTrue: [ anRGEnvironment ask behaviorNamed: aBehaviorName ]
		ifFalse: [ nil ] 
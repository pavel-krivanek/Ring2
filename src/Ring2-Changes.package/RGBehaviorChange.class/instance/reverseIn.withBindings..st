visiting
reverseIn: anRGEnvironment withBindings: originBindings

	| savedBehavior result originalEnvironment |

	savedBehavior := behavior.

	(behavior notNil and: [ anRGEnvironment ~= behavior environment ])
		ifTrue: [ behavior := nil ].

	originalEnvironment := self environment.

	behaviorName 
		ifNotNil: [ 
			behavior 
				ifNotNil: [ 
					originBindings at: behavior put: behaviorName ]
				ifNil: [ 
					| boundBehavior |
					boundBehavior := (originBindings associations detect: [ :each | each value = behaviorName ] ifNone: [ nil -> nil ]) key.
					boundBehavior ifNotNil: [ 
						behavior := boundBehavior.
						originalEnvironment := anRGEnvironment ] ] ].
			
	result := self reverseIn: anRGEnvironment originalEnvironment: originalEnvironment.
	
	behaviorName ifNotNil: [
		originBindings at: result put: behaviorName ].
	
	behavior := savedBehavior.
visiting
reverseIn: anRGEnvironment withBindings: originBindings

	| savedBehavior result |

	savedBehavior := behavior.

	(behavior notNil and: [ anRGEnvironment ~= behavior environment ])
		ifTrue: [ behavior := nil ].

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
						environment := anRGEnvironment "TODO: revert environment afterwards or refactor" ] ] ].
			
	result := self reverseIn: anRGEnvironment.
	
	behaviorName ifNotNil: [
		originBindings at: result put: behaviorName ].
	
	behavior := savedBehavior.
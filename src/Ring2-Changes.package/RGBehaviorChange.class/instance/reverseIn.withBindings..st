visiting
reverseIn: aRGEnvironment withBindings: originBindings

	| savedBehavior result |

	savedBehavior := behavior.

	(behavior notNil and: [ aRGEnvironment ~= behavior environment ])
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
						environment := aRGEnvironment "TODO: revert environment afterwards or refactor" ] ] ].
			
	result := self reverseIn: aRGEnvironment.
	
	behaviorName ifNotNil: [
		originBindings at: result put: behaviorName ].
	
	behavior := savedBehavior.
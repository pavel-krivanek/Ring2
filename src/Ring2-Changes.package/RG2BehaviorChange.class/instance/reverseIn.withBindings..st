visiting
reverseIn: aRG2Environment withBindings: originBindings

	| savedBehavior result |

	savedBehavior := behavior.

	(behavior notNil and: [ aRG2Environment ~= behavior environment ])
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
						environment := aRG2Environment "TODO: revert environment afterwards or refactor" ] ] ].
			
	result := self reverseIn: aRG2Environment.
	
	behaviorName ifNotNil: [
		originBindings at: result put: behaviorName ].
	
	behavior := savedBehavior.
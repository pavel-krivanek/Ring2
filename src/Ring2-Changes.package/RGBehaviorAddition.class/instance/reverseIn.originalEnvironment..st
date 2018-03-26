actions
reverseIn: anRGEnvironment originalEnvironment: originalEnvironment

	| anRGBehavior |

	anRGBehavior  := (originalEnvironment == anRGEnvironment)
		ifTrue: [ behavior ]
		ifFalse: [ 
			behaviorName ifNotNil: [ anRGEnvironment ask behaviorNamed: behaviorName ] ].
		
	anRGBehavior ifNil: [ RGNotFoundError signal ].
	
	anRGEnvironment removeBehavior: anRGBehavior.
	
	^ anRGBehavior
actions
reverseIn: anRGEnvironment

	| anRGBehavior |

	anRGBehavior  := (self environment == anRGEnvironment)
		ifTrue: [ behavior ]
		ifFalse: [ 
			behaviorName ifNotNil: [ anRGEnvironment ask behaviorNamed: behaviorName ] ].
		
	anRGBehavior ifNil: [ RGNotFoundError signal ].
	
	anRGEnvironment removeBehavior: anRGBehavior.
	
	^ anRGBehavior
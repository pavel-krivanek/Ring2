actions
reverseIn: aRGEnvironment

	| aRGBehavior |

	aRGBehavior  := (self environment == aRGEnvironment)
		ifTrue: [ behavior ]
		ifFalse: [ 
			behaviorName ifNotNil: [ aRGEnvironment ask behaviorNamed: behaviorName ] ].
		
	aRGBehavior ifNil: [ RGNotFoundError signal ].
	
	aRGEnvironment removeBehavior: aRGBehavior.
	
	^ aRGBehavior
actions
reverseIn: aRG2Environment

	| aRG2Behavior |

	aRG2Behavior  := (self environment == aRG2Environment)
		ifTrue: [ behavior ]
		ifFalse: [ 
			behaviorName ifNotNil: [ aRG2Environment ask behaviorNamed: behaviorName ] ].
		
	aRG2Behavior ifNil: [ RG2NotFoundError signal ].
	
	aRG2Environment removeBehavior: aRG2Behavior.
	
	^ aRG2Behavior
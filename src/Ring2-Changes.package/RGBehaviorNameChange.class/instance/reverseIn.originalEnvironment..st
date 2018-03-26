actions
reverseIn: anRGEnvironment originalEnvironment: originalEnvironment

	| anRGBehavior |
	
	anRGBehavior  := (originalEnvironment == anRGEnvironment)
		ifTrue: [ behavior ]
		ifFalse: [ anRGEnvironment ask behaviorNamed: newName ifAbsent: [ RGNotFoundError signal ] ].
		
	anRGBehavior name: oldName.
	
	^ anRGBehavior
		
	 
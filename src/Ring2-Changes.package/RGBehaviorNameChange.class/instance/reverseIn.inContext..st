actions
reverseIn: anRGEnvironment inContext: resolvingContext

	| anRGBehavior |
	
	anRGBehavior := self resolvedBehaviorOrNilFrom: resolvingContext in: anRGEnvironment withName: newName.
	anRGBehavior ifNil: [ RGResolvingError signal ].
	
	anRGBehavior name: oldName.
	
	^ anRGBehavior
		
	 
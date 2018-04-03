visiting
reverseIn: anRGEnvironment inContext: resolvingContext

	| anRGMethod |
	
	anRGMethod := self resolvedMethodOrNilFrom: resolvingContext in: anRGEnvironment withName: newName behaviorName: behaviorName.
	anRGMethod ifNil: [ RGResolvingError signal ].
		
	anRGMethod unresolveName.
	
	^ anRGMethod
		
	
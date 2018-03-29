accessing
method: anRGMethod

	self environment: anRGMethod environment.
	
	method := anRGMethod.
	
	behaviorName := anRGMethod parent resolvedNameOrNil.
	methodName := anRGMethod resolvedNameOrNil.
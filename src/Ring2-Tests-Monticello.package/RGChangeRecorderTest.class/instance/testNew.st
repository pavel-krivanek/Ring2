tests
testNew

	| environment recorder | 
	
	environment := RGEnvironment new.
	
	recorder := RGChangeRecorder for: environment.
	
	self assert: recorder environment equals: environment.
	
	
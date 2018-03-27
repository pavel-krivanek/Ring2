tests
testNewWithAChange

	| environment recorder change | 
	
	environment := RGEnvironment new.
	recorder := RGChangeRecorder for: environment.
	change := RGChange in: recorder.
	
	self assert: change recorder equals: recorder.
	
	
	
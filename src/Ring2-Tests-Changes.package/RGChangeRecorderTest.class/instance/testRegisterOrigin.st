tests
testRegisterOrigin

	| environment recorder class id foundId | 
	
	environment := RGEnvironment new.
	recorder := RGChangeRecorder for: environment.
	class := environment ensureClassNamed: #SomeClass.
	
	id := recorder registerOrigin: class.
	
	self assert: id equals: recorder lastId.
	
	foundId := recorder registerOrigin: class.
	
	self assert: foundId equals: id.
	self assert: (recorder originAt: foundId) equals: class.
	
	
	
	

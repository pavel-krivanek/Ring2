tests
testIds

	| env recorder | 
	
	env := RGEnvironment new.
	
	recorder := RGChangeRecorder for: env.
	
	self deny: recorder nextId equals: recorder nextId.
	self assert: recorder nextId equals: recorder lastId.	
	self deny: recorder lastId equals: recorder nextId.		
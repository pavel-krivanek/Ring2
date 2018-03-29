tests
testCopy

	| change changeCopy | 
	
	change := RGChange new.
	changeCopy := change copy.
	
	self deny: change identicalTo: changeCopy.
	self assert: change environment equals: changeCopy environment.
	
	
	

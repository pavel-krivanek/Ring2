tests
testCopy

	| change changeCopy | 
	
	change := RGChange new.
	changeCopy := change copy.
	
	self assert: change environment equals: changeCopy environment.
	
	
	

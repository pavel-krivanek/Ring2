tests
testCopy

	"test the change copying"
	
	| change changeCopy | 
	
	change := RGChange new.
	changeCopy := change copy.
	
	self deny: change identicalTo: changeCopy.
	self assert: change environment equals: changeCopy environment.
	
	
	

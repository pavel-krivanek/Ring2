tests
testCopyForEnvironment

	"test a change copy created in a different environment"

	| change changeCopy env | 
	
	change := RGChange new.
	env := RGEnvironment new.
	changeCopy := change copyForEnvironment: env.
	
	self deny: change environment equals: changeCopy environment.
	self assert: changeCopy environment equals: env.
	
	
	

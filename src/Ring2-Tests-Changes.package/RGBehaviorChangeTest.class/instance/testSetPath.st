tests
testSetPath

	| class change |
	
	class := RGClass named: #SomeClass.
	change := RGBehaviorChange for: class.

	self assert: change path equals: {#SomeClass}.
	
	change setPath: {#SomeClass2}. "not valid path, only for testing"
	self assert: change path equals: {#SomeClass2}.
	


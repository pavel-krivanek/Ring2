tests
testSetPath

	| change |
	
	change := RGMethodChange for: (self resolvedMethodExample).

	self assert: change path equals: {#SomeClass. #someMethod}.
	
	change setPath: {#SomeClass. #someOtherMethod}. "not valid path, only for testing"
	self assert: change path equals: {#SomeClass. #someOtherMethod}.
	


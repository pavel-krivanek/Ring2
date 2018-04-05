tests
testSetPath

	"test if the setting of the path correctly changes the state"

	| change |
	
	change := RGMethodChange for: (self resolvedMethodExample).

	self assert: change path equals: {#SomeClass. #someMethod}.
	
	change setPath: {#SomeClass. #someOtherMethod}. "not valid path, only for testing"
	self assert: change path equals: {#SomeClass. #someOtherMethod}.
	


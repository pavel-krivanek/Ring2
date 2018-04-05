tests
testIsMethodChangeTest

	"test of the 'testing' methods"

	| change |
	
	change := RGMethodChange for: (self resolvedMethodExample).
	
	self assert: change isMethodChange.
	self deny: change isBehaviorChange.
	
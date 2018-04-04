tests
testIsMethodChangeTest

	| change |
	
	change := RGMethodChange for: (self resolvedMethodExample).
	
	self assert: change isMethodChange.
	self deny: change isBehaviorChange.
	
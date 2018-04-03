tests
testEnvironment

	| method change |
	
	method := self resolvedMethodExample.
	change := RGBehaviorChange for: method.
	self assert: change environment equals: method environment.
	
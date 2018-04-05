tests
testEnvironment

	"test if the change environment is the same as the environment of the related class"

	| method change |
	
	method := self resolvedMethodExample.
	change := RGBehaviorChange for: method.
	self assert: change environment equals: method environment.
	
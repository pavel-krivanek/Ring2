tests
testCopy

	"test the change copying"

	| change copy |
	
	change := RGBehaviorChange for: (RGClass named: #SomeClass).
	copy := change copyForEnvironment: nil.
	
	self assert: copy behaviorName equals: #SomeClass.
	
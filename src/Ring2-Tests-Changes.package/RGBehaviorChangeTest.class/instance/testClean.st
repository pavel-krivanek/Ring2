tests
testClean

	"test if the cleaned change loses a reference to the behavior"

	| class change |
	
	class := RGClass named: #SomeClass.
	change := RGBehaviorChange for: class.
	
	self assert: change behavior equals: class.
	change clean.
	self assert: change behavior equals: nil.
	
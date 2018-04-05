tests
testIsBehaviorChangeTest

	"test #isBehaviorChange (testing) method"

	| class change |
	
	class := RGClass named: #SomeClass.
	change := RGBehaviorChange for: class.
	
	self assert: change isBehaviorChange.
	self deny: change isMethodChange.

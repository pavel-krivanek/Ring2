tests
testHasResolvedOriginForResolved

	"test if the change of a resolved class has a resolved origin"

	| class change |
	
	class := RGClass named: #SomeClass.
	change := RGBehaviorChange for: class.
	self assert: change hasResolvedOriginName 
	
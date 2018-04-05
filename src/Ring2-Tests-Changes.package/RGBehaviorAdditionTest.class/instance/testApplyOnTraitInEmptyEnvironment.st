tests - apply
testApplyOnTraitInEmptyEnvironment

	"Try to apply change on a trait. It proves that a behavior of the correct kind is created."

	| class emptyEnvironment change newClass |
	
	class := RGTrait named: #SomeClass.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorAdditionWithName for: class.
	change applyIn: emptyEnvironment.

	newClass := emptyEnvironment ask classNamed: #SomeClass.
	self assert: newClass notNil.
	self assert: newClass isTrait.	
	self deny: newClass isMeta.
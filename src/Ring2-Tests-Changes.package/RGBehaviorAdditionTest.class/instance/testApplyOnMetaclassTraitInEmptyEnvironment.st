tests - apply
testApplyOnMetaclassTraitInEmptyEnvironment

	"Try to apply change on a metaclass. It proves that a behavior of the correct kind is created."

	| class emptyEnvironment change newClass |
	
	class := RGMetaclassTrait named: #SomeClass.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorAdditionWithName for: class.
	change applyIn: emptyEnvironment.

	newClass := emptyEnvironment ask classNamed: #SomeClass.
	self assert: newClass notNil.
	self assert: newClass isMetaclassTrait.
	self assert: newClass isMeta.	
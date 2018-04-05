tests - apply
testApplyOnMetaclassInEmptyEnvironment

	"try to apply a change in a different empty environment but this time on a Metaclass. It should create a new metaclass. It proves that a behavior of the correct kind is created."

	| class emptyEnvironment change newClass |
	
	class := RGMetaclass named: #SomeClass.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorAdditionWithName for: class.
	change applyIn: emptyEnvironment.

	self assert: emptyEnvironment ask behaviors size equals: 4.
	newClass := emptyEnvironment ask classNamed: #SomeClass.
	self assert: newClass notNil.
	self assert: newClass isMetaclass.
tests - apply
testApplyOnClassInEmptyEnvironment

	"try to apply a change in a different empty environment. It should create a new class"

	| class emptyEnvironment change newClass result |
	
	class := RGClass named: #SomeClass.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorAdditionWithName for: class.
	result := change applyIn: emptyEnvironment.
	
	newClass := emptyEnvironment ask classNamed: #SomeClass.
	self assert: result equals: newClass.

	self assert: emptyEnvironment ask behaviors size equals: 4.
	self assert: newClass notNil.
	self assert: newClass isClass.
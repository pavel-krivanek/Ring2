testing
testApplyOnClassInEmptyEnvironment

	| class emptyEnvironment change newClass |
	
	class := RGClass named: #SomeClass.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorAddition for: class.
	change applyIn: emptyEnvironment.

	self assert: emptyEnvironment ask behaviors size equals: 4.
	newClass := emptyEnvironment ask classNamed: #SomeClass.
	self assert: newClass notNil.
	self assert: newClass isClass.
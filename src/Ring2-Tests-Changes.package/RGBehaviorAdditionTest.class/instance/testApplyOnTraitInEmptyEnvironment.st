testing
testApplyOnTraitInEmptyEnvironment

	| class emptyEnvironment change newClass |
	
	class := RGTrait named: #SomeClass.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorAddition for: class.
	change applyIn: emptyEnvironment.

	newClass := emptyEnvironment ask classNamed: #SomeClass.
	self assert: newClass notNil.
	self assert: newClass isTrait.	
	self deny: newClass isMeta.
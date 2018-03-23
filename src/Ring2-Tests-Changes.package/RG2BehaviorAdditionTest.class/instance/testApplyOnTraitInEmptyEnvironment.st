testing
testApplyOnTraitInEmptyEnvironment

	| class emptyEnvironment change newClass |
	
	class := RG2Trait named: #SomeClass.
	emptyEnvironment := RG2Environment new.

	change := RG2BehaviorAddition for: class.
	change applyIn: emptyEnvironment.

	newClass := emptyEnvironment ask classNamed: #SomeClass.
	self assert: newClass notNil.
	self assert: newClass isTrait.	
	self deny: newClass isMeta.
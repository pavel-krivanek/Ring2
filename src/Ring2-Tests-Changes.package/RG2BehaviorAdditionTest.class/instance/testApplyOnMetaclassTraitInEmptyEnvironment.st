testing
testApplyOnMetaclassTraitInEmptyEnvironment

	| class emptyEnvironment change newClass |
	
	class := RG2MetaclassTrait named: #SomeClass.
	emptyEnvironment := RG2Environment new.

	change := RG2BehaviorAddition for: class.
	change applyIn: emptyEnvironment.

	newClass := emptyEnvironment ask classNamed: #SomeClass.
	self assert: newClass notNil.
	self assert: newClass isMetaclassTrait.
	self assert: newClass isMeta.	
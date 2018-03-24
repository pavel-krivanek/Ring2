testing
testApplyOnMetaclassTraitInEmptyEnvironment

	| class emptyEnvironment change newClass |
	
	class := RGMetaclassTrait named: #SomeClass.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorAddition for: class.
	change applyIn: emptyEnvironment.

	newClass := emptyEnvironment ask classNamed: #SomeClass.
	self assert: newClass notNil.
	self assert: newClass isMetaclassTrait.
	self assert: newClass isMeta.	
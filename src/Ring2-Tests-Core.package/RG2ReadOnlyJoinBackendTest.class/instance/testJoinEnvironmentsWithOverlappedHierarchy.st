as yet unclassified
testJoinEnvironmentsWithOverlappedHierarchy

	| class1 superclass1 class2 joinEnv found1 found2 |
	
	class1 := RG2Class named: #SomeClass.
	superclass1 := class1 environment ensureClassNamed: #Object.
	class1 superclass: superclass1.
	
	class2 := RG2MetaclassOld named: #Object.

	joinEnv := self joinedEnvironmentFor: class1 environment and: class2 environment.

	found1 := joinEnv ask behaviorNamed: #SomeClass.
	found2 := joinEnv ask behaviorNamed: #Object.
	
	self assert: found1 notNil.
	self assert: found2 notNil.	
		
	self assert: found1 ~~ class1.
	self assert: found2 ~~ class2.

	self assert: found1 environment equals: joinEnv.
	self assert: found2 environment equals: joinEnv.
	
	found1 metaclass.
	
	self assert: joinEnv ask behaviors size equals: 8.


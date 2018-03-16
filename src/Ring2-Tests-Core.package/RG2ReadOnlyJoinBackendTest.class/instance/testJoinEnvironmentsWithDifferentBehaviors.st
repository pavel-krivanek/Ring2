as yet unclassified
testJoinEnvironmentsWithDifferentBehaviors

	| class1 class2 joinEnv |
	
	class1 := RG2Class named: #SomeClass1.
	class2 := RG2Class named: #SomeClass2.

	joinEnv := self joinedEnvironmentFor: class1 environment and: class2 environment.

	self assert: (joinEnv ask behaviorNamed: #SomeClass1) notNil.
	self assert: (joinEnv ask behaviorNamed: #SomeClass2) notNil.	
		
	self assert: joinEnv ask behaviors size equals: 8.


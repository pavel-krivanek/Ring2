tests
testJoinEnvironmentsWithSameBehaviors

	| class1 class2 joinEnv |
	
	class1 := RGClass named: #SomeClass.
	class1 superclass: (class1 environment ensureClassNamed: #SomeClassSuperclass). 
	
	class2 := RGClass named: #SomeClass.
	class2 superclass: (class2 environment ensureClassNamed: #SomeClassOtherSuperclass). 

	joinEnv := self joinedEnvironmentFor: class1 environment and: class2 environment.
	
	self should: [ joinEnv ask behaviors ] raise: RGJoiningError.

tests
testJoinEnvironmentsWithSameBehaviors

	| class1 class2 joinEnv |
	
	class1 := RG2ClassDefinition named: #SomeClass.
	class1 superclass: (class1 environment ensureClassNamed: #SomeClassSuperclass). 
	
	class2 := RG2ClassDefinition named: #SomeClass.
	class2 superclass: (class2 environment ensureClassNamed: #SomeClassOtherSuperclass). 

	joinEnv := self joinedEnvironmentFor: class1 environment and: class2 environment.
	
	self should: [ joinEnv ask behaviors ] raise: RG2JoiningError.

as yet unclassified
testJoinEnvironmentsWithSameBehaviors

	| class1 class2 joinEnv |
	
	class1 := RG2ClassDefinition named: #SomeClass.
	class1 category: 'SomeCategory'. 
	
	class2 := RG2ClassDefinition named: #SomeClass.
	class2 category: 'SomeCategory2'. 

	joinEnv := self joinedEnvironmentFor: class1 environment and: class2 environment.
	
	self should: [ joinEnv ask behaviors ] raise: RG2JoiningError.

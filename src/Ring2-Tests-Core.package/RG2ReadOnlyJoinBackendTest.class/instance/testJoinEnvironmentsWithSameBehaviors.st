as yet unclassified
testJoinEnvironmentsWithSameBehaviors

	| class1 class2 joinEnv |
	
	class1 := RG2ClassDefinition named: #SomeClass.
	class1 category: 'SomeCategory'. 
	"...to have something more than only name resolved"
	
	class2 := RG2ClassDefinition named: #SomeClass.

	joinEnv := self joinedEnvironmentFor: class1 environment and: class2 environment.
	
	self should: [ joinEnv ask behaviors ] raise: RG2JoiningError.

as yet unclassified
testJoinWithImageEnvironment

	| env class1 superclass1 joinEnv found |
	
	env := RG2Environment new.
	env backend: (RG2ReadOnlyImageBackend for: env).
	
	class1 := RG2ClassDefinition named: #SomeClass.
	superclass1 := class1 environment ensureClassNamed: #Object.
	class1 superclass: superclass1.
	class1 environment clean.

	joinEnv := RG2Environment new.
	joinEnv backend: (RG2ReadOnlyJoinBackend for: joinEnv).
	joinEnv backend environment1: env.
	joinEnv backend environment2: class1 environment.

	self shouldnt: [found := joinEnv ask behaviorNamed: #SomeClass ] raise: RG2JoiningError.
	
	self assert: found notNil.
	self assert: found superclass name equals: #Object.
	self assert: found superclass superclass name equals: #ProtoObject.
	

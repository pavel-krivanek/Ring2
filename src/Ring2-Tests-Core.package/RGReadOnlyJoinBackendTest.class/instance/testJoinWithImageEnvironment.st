as yet unclassified
testJoinWithImageEnvironment

	| env class1 superclass1 joinEnv found |
	
	env := RGEnvironment new.
	env backend: (RGReadOnlyImageBackend for: env).
	
	class1 := RGClass named: #SomeClass.
	superclass1 := class1 environment ensureClassNamed: #Object.
	class1 superclass: superclass1.
	class1 environment clean.

	joinEnv := RGEnvironment new.
	joinEnv backend: (RGReadOnlyJoinBackend for: joinEnv).
	joinEnv backend environment1: env.
	joinEnv backend environment2: class1 environment.

	self shouldnt: [found := joinEnv ask behaviorNamed: #SomeClass ] raise: RGJoiningError.
	
	self assert: found notNil.
	self assert: found superclass name equals: #Object.
	self assert: found superclass superclass name equals: #ProtoObject.
	

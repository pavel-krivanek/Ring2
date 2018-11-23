Class {
	#name : #RGReadOnlyJoinBackendTest,
	#superclass : #RGBackendTest,
	#traits : 'TRGReadOnlyTest',
	#classTraits : 'TRGReadOnlyTest classTrait',
	#category : 'Ring2-Experiments'
}

{ #category : #'as yet unclassified' }
RGReadOnlyJoinBackendTest >> joinedEnvironmentFor: anRGEnvironment1 and: anRGEnvironment2 [

	| joinEnv |
	
	joinEnv := RGEnvironment new.
	joinEnv backend: (RGReadOnlyJoinBackend for: joinEnv).
	joinEnv backend environment1: anRGEnvironment1.
	joinEnv backend environment2: anRGEnvironment2.
	
	^ joinEnv 
]

{ #category : #'as yet unclassified' }
RGReadOnlyJoinBackendTest >> testJoinEnvironmentsWithDifferentBehaviors [

	| class1 class2 joinEnv |
	
	class1 := RGClass named: #SomeClass1.
	class2 := RGClass named: #SomeClass2.

	joinEnv := self joinedEnvironmentFor: class1 environment and: class2 environment.

	self assert: (joinEnv ask behaviorNamed: #SomeClass1) notNil.
	self assert: (joinEnv ask behaviorNamed: #SomeClass2) notNil.	
		
	self assert: joinEnv ask behaviors size equals: 8.


]

{ #category : #'as yet unclassified' }
RGReadOnlyJoinBackendTest >> testJoinEnvironmentsWithOverlappedHierarchy [

	| class1 superclass1 class2 joinEnv found1 found2 |
	
	class1 := RGClass named: #SomeClass.
	superclass1 := class1 environment ensureClassNamed: #Object.
	class1 superclass: superclass1.
	
	class2 := RGMetaclass named: #Object.

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


]

{ #category : #tests }
RGReadOnlyJoinBackendTest >> testJoinEnvironmentsWithSameBehaviors [

	| class1 class2 joinEnv |
	
	class1 := RGClass named: #SomeClass.
	class1 superclass: (class1 environment ensureClassNamed: #SomeClassSuperclass). 
	
	class2 := RGClass named: #SomeClass.
	class2 superclass: (class2 environment ensureClassNamed: #SomeClassOtherSuperclass). 

	joinEnv := self joinedEnvironmentFor: class1 environment and: class2 environment.
	
	self should: [ joinEnv ask behaviors ] raise: RGJoiningError.

]

{ #category : #'as yet unclassified' }
RGReadOnlyJoinBackendTest >> testJoinWithImageEnvironment [

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
	

]

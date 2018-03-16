tests
testImplicitEnvironmentContentForMethodDefinition
	
	| def def2 env |

	def := RG2Method named: #someMethod.
	env := def environment.

	"we have SomeClass, SomeClass class, SomeClass superclass, SomeClass superclass class"
	self assert: env ask behaviors size equals: 4.

	"we have one package for SomeClass and SomeClass class, other for SomeClass superclass 
	and SomeClass superclass class"	
	self assert: env ask packages size equals: 2.
	self assert: (env ask behaviors select: #isMeta) size equals: 2.

	self checkHierarchyConsistencyOf: def parent.
	
	self deny: (def parent isRing2Resolved).
	self deny: (def parent superclass isRing2Resolved).
	self deny: (def parent metaclass isRing2Resolved).
	self deny: (def parent superclass metaclass isRing2Resolved).
	

tests
testImplicitEnvironmentContentForClassDefinition
	
	| def def2 env |

	def := RG2Class named: #SomeClass.
	env := def environment.

	"we have SomeClass, SomeClass class, SomeClass superclass, SomeClass superclass class"
	self assert: env ask behaviors size equals: 4.

	"we have one package for SomeClass and SomeClass class, other for SomeClass superclass 
	and SomeClass superclass class"	
	self assert: env ask packages size equals: 2.
	self assert: (env ask behaviors select: #isMeta) size equals: 2.

	self checkHierarchyConsistencyOf: def.
	
	self assert: (def isRing2Resolved).
	self deny: (def superclass isRing2Resolved).
	self deny: (def metaclass isRing2Resolved).
	self deny: (def superclass metaclass isRing2Resolved).
	
	def2 := RG2Class named: #SomeOtherClass parent: env.
	self assert: env ask behaviors size equals: 8. 
	self assert: env ask packages size equals: 4.
	
	self checkHierarchyConsistencyOf: def2.

	self assert: (def2 isRing2Resolved).
	self deny: (def2 superclass isRing2Resolved).
	self deny: (def2 metaclass isRing2Resolved).
	self deny: (def2 superclass metaclass isRing2Resolved).
	

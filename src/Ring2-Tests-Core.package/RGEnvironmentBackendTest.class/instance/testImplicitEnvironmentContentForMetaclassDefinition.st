tests
testImplicitEnvironmentContentForMetaclassDefinition
	
	| def def2 env baseClass|

	def := RGMetaclass named: #'SomeClass class'.
	env := def environment.

	"we have SomeClass, SomeClass class, SomeClass superclass, SomeClass superclass class"
	self assert: env ask behaviors size equals: 4.

	"we have one package for SomeClass and SomeClass class, other for SomeClass superclass 
	and SomeClass superclass class"	
	self assert: env ask packages size equals: 2.
	self assert: (env ask behaviors select: #isMeta) size equals: 2.

	baseClass := def baseClass.
	self checkHierarchyConsistencyOf: baseClass.
	
	self deny: (baseClass isRing2Resolved).
	self deny: (baseClass superclass isRing2Resolved).
	self assert: (baseClass metaclass isRing2Resolved).
	self deny: (baseClass superclass metaclass isRing2Resolved).
	

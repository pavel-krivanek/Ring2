Class {
	#name : #RGBehaviorAdditionTest,
	#superclass : #RGBehaviorChangeTest,
	#category : 'Ring2-Tests-Changes'
}

{ #category : #'tests - apply' }
RGBehaviorAdditionTest >> testApplyOnClassInADifferentEnvironment [

	"try to apply a change in a different environment that already contains a class of the same name. It should do nothing fo real"

	| class1 class2 change |
	
	class1 := RGClass named: #SomeClass.
	class2 := RGClass named: #SomeClass.
	change := RGBehaviorAddition for: class1.

	self assert: class2 environment ask behaviors size equals: 4.

	change applyIn: class2 environment.

	self assert: class2 environment ask behaviors size equals: 4.
	self assert: (class2 environment ask classNamed: #SomeClass) equals: class2.
]

{ #category : #'tests - apply' }
RGBehaviorAdditionTest >> testApplyOnClassInEmptyEnvironment [

	"try to apply a change in a different empty environment. It should create a new class"

	| class emptyEnvironment change newClass result |
	
	class := RGClass named: #SomeClass.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorAdditionWithName for: class.
	result := change applyIn: emptyEnvironment.
	
	newClass := emptyEnvironment ask classNamed: #SomeClass.
	self assert: result equals: newClass.

	self assert: emptyEnvironment ask behaviors size equals: 4.
	self assert: newClass notNil.
	self assert: newClass isClass.
]

{ #category : #'tests - apply' }
RGBehaviorAdditionTest >> testApplyOnClassInTheSameEnvironment [

	"try to apply a change in a the same environment. It should do nothing for real"

	| class change |
	
	class := RGClass named: #SomeClass.
	change := RGBehaviorAddition for: class.

	self assert: class environment ask behaviors size equals: 4.

	change applyIn: class environment.

	self assert: class environment ask behaviors size equals: 4.
	self assert: (class environment ask classNamed: #SomeClass) equals: class.
]

{ #category : #'tests - apply' }
RGBehaviorAdditionTest >> testApplyOnMetaclassInEmptyEnvironment [

	"try to apply a change in a different empty environment but this time on a Metaclass. It should create a new metaclass. It proves that a behavior of the correct kind is created."

	| class emptyEnvironment change newClass |
	
	class := RGMetaclass named: #SomeClass.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorAdditionWithName for: class.
	change applyIn: emptyEnvironment.

	self assert: emptyEnvironment ask behaviors size equals: 4.
	newClass := emptyEnvironment ask classNamed: #SomeClass.
	self assert: newClass notNil.
	self assert: newClass isMetaclass.
]

{ #category : #'tests - apply' }
RGBehaviorAdditionTest >> testApplyOnMetaclassTraitInEmptyEnvironment [

	"Try to apply change on a metaclass. It proves that a behavior of the correct kind is created."

	| class emptyEnvironment change newClass |
	
	class := RGMetaclassTrait named: #SomeClass.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorAdditionWithName for: class.
	change applyIn: emptyEnvironment.

	newClass := emptyEnvironment ask classNamed: #SomeClass.
	self assert: newClass notNil.
	self assert: newClass isMetaclassTrait.
	self assert: newClass isMeta.	
]

{ #category : #'tests - apply' }
RGBehaviorAdditionTest >> testApplyOnTraitInEmptyEnvironment [

	"Try to apply change on a trait. It proves that a behavior of the correct kind is created."

	| class emptyEnvironment change newClass |
	
	class := RGTrait named: #SomeClass.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorAdditionWithName for: class.
	change applyIn: emptyEnvironment.

	newClass := emptyEnvironment ask classNamed: #SomeClass.
	self assert: newClass notNil.
	self assert: newClass isTrait.	
	self deny: newClass isMeta.
]

{ #category : #'tests - apply' }
RGBehaviorAdditionTest >> testApplyOnUnresolvedClassInEmptyEnvironment [

	"apply change of unresolved class in a empty environment. It should create an unresolved class"
	| class emptyEnvironment change |
	
	class := RGClass unresolved.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorAddition for: class.
	change applyIn: emptyEnvironment.
	
	self assert: emptyEnvironment ask behaviors size equals: 4.

]

{ #category : #testing }
RGBehaviorAdditionTest >> testResolvingReturnsNewChanges [

	| env class change |
	
	env := RGEnvironment new.
	class := env ensureClassNamed: #SomeClass.
	change := RGBehaviorAdditionWithName for: class.

	self checkResolvingReturnsNewObjectsFor: change.
]

{ #category : #'tests - revert' }
RGBehaviorAdditionTest >> testRevertOnClassInADifferentEnvironment [

	| class class2 change env deletedBehavior |
	
	class := RGClass named: #SomeClass.
	class2 := RGClass named: #SomeClass.
	env := class2 environment.

	change := RGBehaviorAdditionWithName for: class.
	deletedBehavior := change revertIn: env.
	
	self assert: deletedBehavior equals: class2.
		
	self assert: (env ask classNamed: #SomeClass) equals: nil.

	self deny: (env ask behaviors includes: deletedBehavior).

]

{ #category : #'tests - revert' }
RGBehaviorAdditionTest >> testRevertOnClassInEmptyEnvironment [

	| class emptyEnvironment change  |
	
	class := RGClass named: #SomeName.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorAddition for: class.
	
	self should: [ change revertIn: emptyEnvironment ] raise: RGResolvingError.
		

]

{ #category : #'tests - revert' }
RGBehaviorAdditionTest >> testRevertOnClassInTheSameEnvironment [

	| class change |
	
	class := RGClass named: #SomeClass.
	change := RGBehaviorAdditionWithName for: class.
	
	change revertIn: class environment.
		
	self assert: (class environment ask classNamed: #SomeClass) equals: nil.
	


]

{ #category : #testing }
RGBehaviorAdditionTest >> testSimpleAddition [

	"test if we can create a change of a resolved class"

	| env class change |
	
	env := RGEnvironment new.
	class := env ensureClassNamed: #SomeClass.
	change := RGBehaviorAddition for: class.
	
	self assert: change behavior equals: class.
	
	
	
	
]

{ #category : #testing }
RGBehaviorAdditionTest >> testSimpleAdditionWithUnresolvedName [

	"test if we can create a change of a unresolved class"
	
	| env class change |
	
	class := RGBehavior newClass.
	change := RGBehaviorAddition for: class.
	
	self assert: change behavior equals: class.
	
	
	
	
]

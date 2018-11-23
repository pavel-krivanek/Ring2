Class {
	#name : #RGChangesListTest,
	#superclass : #RGChangeTest,
	#instVars : [
		'list',
		'class',
		'change1',
		'change2',
		'change3'
	],
	#category : 'Ring2-Store'
}

{ #category : #running }
RGChangesListTest >> setUp [

	super setUp.
	
	list := RGChangesList new.
	class := RGClass unresolved.
	change1 := RGBehaviorAddition for: class.
	change2 := RGBehaviorNameResolvedChange for: class newName: #SomeClass.
	change3 := RGBehaviorNameChange for: class oldName: #SomeClass newName: #NewName.
]

{ #category : #tests }
RGChangesListTest >> testAdding [

	list add: change1.
	list add: change2.
	list add: change3.
	
	self assert: list size equals: 3.
	self assert: list changes first equals: change1.
	self assert: list changes last equals: change3.	
	
	self assert: list environment equals: change1 environment.

]

{ #category : #tests }
RGChangesListTest >> testAddingChangeFromDifferentEnvironment [

	| change |
	
	change := RGBehaviorNameChange for: (RGClass named: #OldName) oldName: #OldName newName: #NewName.

	list add: change1.
	
	self should: [ list add: change ] raise: RGWrongEnvironment.
]

{ #category : #tests }
RGChangesListTest >> testApply [

	| env |
	
	list add: change1.
	list add: change2.
	list add: change3.
	
	env := RGEnvironment new.
	list applyIn: env.
	
	self assert: (env ask behaviorNamed: #NewName) notNil.
]

{ #category : #tests }
RGChangesListTest >> testEmpty [

	| changeList |
	
	changeList := RGChangesList new.
	self assert: changeList changes isEmpty.
	self assert: changeList isEmpty. 
	
	self assert: changeList environment isNil.
]

{ #category : #tests }
RGChangesListTest >> testRevertInWithResolving [

	| aClass results |
	
	list add: change1.
	list add: change2.
	list add: change3.
	
	aClass := RGClass named: #NewName.
	results := list revertIn: aClass environment.

	self assert: (list environment ask behaviorNamed: #NewName) isNil.
	self assert: (results asOrderedCollection allSatisfy: [ :each | each = aClass ]).
	
]

{ #category : #tests }
RGChangesListTest >> testRevertInWithResolvingChanges2to3 [

	| aClass results |
	
	list add: change2.
	list add: change3.
	
	aClass := RGClass named: #NewName.
	results := list revertIn: aClass environment.

	self assert: (aClass environment ask behaviorNamed: #NewName) isNil.
	self assert: (results asOrderedCollection allSatisfy: [ :each | each = aClass ]).
	

]

{ #category : #tests }
RGChangesListTest >> testRevertInWithResolvingChanges3 [

	| aClass results |
	
	list add: change3.
	
	aClass := RGClass named: #NewName.
	results := list revertIn: aClass environment.

	self assert: (aClass environment ask behaviorNamed: #SomeClass) notNil.
	self assert: (results asOrderedCollection allSatisfy: [ :each | each = aClass ]).

]

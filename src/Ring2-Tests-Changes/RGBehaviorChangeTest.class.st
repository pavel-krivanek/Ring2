Class {
	#name : #RGBehaviorChangeTest,
	#superclass : #RGChangeTest,
	#category : 'Ring2-Tests-Changes'
}

{ #category : #tests }
RGBehaviorChangeTest >> testBehaviorChangeToResolved [

	"test if we can assign resolved class to a change that originally used unresolved class"

	| class class2 change |
	
	class := RGBehavior newClass.
	class2 := RGClass named: #SomeClass.
	change := RGBehaviorChange for: class.
	change behavior: class2.
	self assert: change behaviorName equals: #SomeClass.
	self assert: change hasResolvedOriginName 
	
]

{ #category : #tests }
RGBehaviorChangeTest >> testBehaviorChangeToUnresolved [

	"test if we can assign unresolved class to a change that originally used resolved class"

	| class class2 change |
	
	class := RGClass named: #SomeClass.
	class2 := RGBehavior newClass.
	change := RGBehaviorChange for: class.
	change behavior: class2.
	self deny: change hasResolvedOriginName 
	
]

{ #category : #tests }
RGBehaviorChangeTest >> testClean [

	"test if the cleaned change loses a reference to the behavior"

	| class change |
	
	class := RGClass named: #SomeClass.
	change := RGBehaviorChange for: class.
	
	self assert: change behavior equals: class.
	change clean.
	self assert: change behavior equals: nil.
	
]

{ #category : #tests }
RGBehaviorChangeTest >> testCopy [

	"test the change copying"

	| change copy |
	
	change := RGBehaviorChange for: (RGClass named: #SomeClass).
	copy := change copyForEnvironment: nil.
	
	self assert: copy behaviorName equals: #SomeClass.
	
]

{ #category : #tests }
RGBehaviorChangeTest >> testEnvironment [

	"test if we can change the change environment"

	| class change |
	
	class := RGBehavior newClass.
	change := RGBehaviorChange for: class.
	self assert: change environment equals: class environment.
	
]

{ #category : #tests }
RGBehaviorChangeTest >> testHasResolvedOriginForResolved [

	"test if the change of a resolved class has a resolved origin"

	| class change |
	
	class := RGClass named: #SomeClass.
	change := RGBehaviorChange for: class.
	self assert: change hasResolvedOriginName 
	
]

{ #category : #tests }
RGBehaviorChangeTest >> testHasResolvedOriginForUnresolved [

	"test if the change of a unresolved class has an unresolved origin"

	| class change |
	
	class := RGBehavior newClass.
	change := RGBehaviorChange for: class.
	self deny: change hasResolvedOriginName 
	
]

{ #category : #tests }
RGBehaviorChangeTest >> testIsBehaviorChangeTest [

	"test #isBehaviorChange (testing) method"

	| class change |
	
	class := RGClass named: #SomeClass.
	change := RGBehaviorChange for: class.
	
	self assert: change isBehaviorChange.
	self deny: change isMethodChange.

]

{ #category : #tests }
RGBehaviorChangeTest >> testSetPath [

	"test if changing of the path correctly changes the internal state (behaviorName)"
	
	| class change |
	
	class := RGClass named: #SomeClass.
	change := RGBehaviorChange for: class.

	self assert: change path equals: {#SomeClass}.
	
	change setPath: {#SomeClass2}. "not valid path, only for testing"
	self assert: change path equals: {#SomeClass2}.
	


]

{ #category : #tests }
RGBehaviorChangeTest >> testUnresolvedBehaviorBinding [

	"test if the change can use an unresolved class"

	| class change |
	
	class := RGBehavior newClass.
	change := RGBehaviorChange for: class.
	self assert: change behavior equals: class.
	
]

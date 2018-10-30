Class {
	#name : #RGChangesResolverTest,
	#superclass : #RGTest,
	#instVars : [
		'resolver',
		'env'
	],
	#category : 'Ring2-Tests-Changes'
}

{ #category : #running }
RGChangesResolverTest >> setUp [

	env := RGEnvironment new.
	resolver := RGChangesResolver for: env.
]

{ #category : #tests }
RGChangesResolverTest >> testEnsureOriginId [

	"try to generate and assign a new id"
	
	| id class |
	
	class := env ensureClassNamed: #SomeClass.
	id := resolver ensureOriginId: class.
	
	self assert: id notNil.
	self assert: (resolver originFor: id) equals: class.

]

{ #category : #tests }
RGChangesResolverTest >> testEnvironment [

	"test if the environment was correctly set"

	self assert: resolver environment equals: env
	
]

{ #category : #tests }
RGChangesResolverTest >> testNew [

	"the internal directories should be empty by default"

	self assert: resolver changesToIDs isEmpty.
	self assert: resolver idsToOrigins isEmpty.
	self assert: resolver originsToIDs isEmpty.
	
	
]

{ #category : #tests }
RGChangesResolverTest >> testNewId [

	"test uniqueness of a new id"

	self assert: resolver newID equals: resolver lastID.
	self deny: resolver lastID equals: resolver newID.
	self deny: resolver newID equals: resolver newID.
	self assert: resolver newID < resolver newID.

]

{ #category : #tests }
RGChangesResolverTest >> testResolveSimpleBehaviorChange [

	"test the id assignment for a simple behavior change"

	| class change id resolvedChanges | 
	
	class := env ensureClassNamed: #OldName.
	class name: #NewName.

	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	resolvedChanges := resolver resolve: { change }.
	
	id := resolver idFor: class.
	self assert: (resolver originFor: id) equals: class.
	
	resolvedChanges allSatisfy: [ :each | each behavior isNil. ].
	resolvedChanges allSatisfy: #isBehaviorChange.
	
	
]

{ #category : #tests }
RGChangesResolverTest >> testResolveUnresolvedBehaviorChange [

	"try the case when we are resolving firstly the resolved behavior and after that a change with the unresolved behavior but the same method reference. It should assign the same origin id the both of the chagnes"

	| class method change changeCopy resolvedChanges | 
	
	class := RGClass named: #SomeClass.
	method := class ensureUnresolvedLocalMethod.
	change := RGMethodNameResolvedChange for: method newName: #someName.
	changeCopy := change copy.
	changeCopy setPath: {nil. #someName}.
	
	resolvedChanges := resolver resolve: { change. changeCopy. }.
	
	self assert: resolvedChanges first originId equals: resolvedChanges second originId.
	self assert: resolvedChanges second behaviorName equals: #SomeClass.
	self assert: resolvedChanges second methodName equals: #someName.	

]

{ #category : #tests }
RGChangesResolverTest >> testResolveUnresolvedBehaviorChangeCleaned [

	"try to resolve four cleaned method chagnes where the last two have unresolved class origin. All of them should have the same origin id"

	| class method change changeCopy1 changeCopy2  changeCopy3 resolvedChanges | 
	
	class := RGClass named: #SomeClass.
	method := class ensureUnresolvedLocalMethod.
	change := RGMethodNameResolvedChange for: method newName: #someName.
	change clean.
	changeCopy1 := change copy.
	changeCopy2 := change copy.
	changeCopy3 := change copy.
	changeCopy2 setPath: {nil. #someName}.
	changeCopy3 setPath: {nil. #someName}.
	
	resolvedChanges := resolver resolve: { change. changeCopy1. changeCopy2. changeCopy3.}.
	
	self assert: resolvedChanges first originId equals: resolvedChanges second originId.
	self deny: resolvedChanges first originId equals: resolvedChanges third originId.
	self deny: resolvedChanges third behaviorName equals: #SomeClass.
	self assert: resolvedChanges third methodName equals: #someName.	
	self deny: resolvedChanges third originId equals: resolvedChanges fourth originId.

]

{ #category : #tests }
RGChangesResolverTest >> testResolveUnresolvedBehaviorChangeCleanedReversed [

	"try to resolve two mehtod changes where the second one looses the reference to the original method object. It should be correctly resolved from the name"

	| class method change changeCopy resolvedChanges | 
	
	class := RGClass named: #SomeClass.
	method := class ensureLocalMethodNamed: #someName.
	change := RGMethodNameResolvedChange for: method newName: #someName.
	change clean.
	changeCopy := change copy.
		
	resolvedChanges := resolver resolve: { change. changeCopy }.
	
	self assert: resolvedChanges first originId equals: resolvedChanges second originId.
	self assert: resolvedChanges second behaviorName equals: #SomeClass.
	self assert: resolvedChanges second methodName equals: #someName.	

]

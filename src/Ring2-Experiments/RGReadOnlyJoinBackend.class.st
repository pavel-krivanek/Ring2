Class {
	#name : #RGReadOnlyJoinBackend,
	#superclass : #RGReadOnlyBackend,
	#instVars : [
		'environment1',
		'environment2'
	],
	#category : 'Ring2-Experiments'
}

{ #category : #'as yet unclassified' }
RGReadOnlyJoinBackend >> behaviorsFor: anRGEnvironment do: aBlock [

	| enumerated  |
	
	enumerated := IdentitySet new. 
	
	self environment1 behaviorsDo: [ :each |
		| corresponding | 
		corresponding := each correspondingObjectIn: environment2.
		
		enumerated add: each.
		corresponding 
			ifNil: [	aBlock value: (self copyFor: each) ]
			ifNotNil: [ 
				aBlock value: (self copyFor: (self chooseFrom: each and: corresponding)).
				enumerated add: corresponding ]].
				
	self environment2 behaviorsDo: [ :each | 
		(enumerated includes: each) 
			ifFalse: [ aBlock value: (self copyFor: each) ] ].
]

{ #category : #'as yet unclassified' }
RGReadOnlyJoinBackend >> chooseFrom: anRGObject1 and: anRGObject2 [

	| firstResolved |
	
	"(anRGObject1 canMergeSimplyWithoutName: anRGObject2)
		ifFalse: [ RGJoiningError signal]."

	(anRGObject1 canMergeWith:	anRGObject2 visited: IdentitySet new)	
		ifFalse: [ RGJoiningError signal].
	"
	(anRGObject1 canBeJoined not and: [ anRGObject2 canBeJoined not ])
		ifTrue: [ RGJoiningError signal ].
	"
	firstResolved := anRGObject1 isRingResolved.
		
	^ firstResolved 
		ifTrue: [ anRGObject1 ]
		ifFalse: [ anRGObject2 ].
]

{ #category : #'as yet unclassified' }
RGReadOnlyJoinBackend >> copyFor: anRGObject [

	^ self definitionFor: anRGObject ifAbsentRegister: [
		anRGObject copyForEnvironment: self environment].
]

{ #category : #accessing }
RGReadOnlyJoinBackend >> environment1 [
	^ environment1
]

{ #category : #accessing }
RGReadOnlyJoinBackend >> environment1: anObject [
	environment1 := anObject
]

{ #category : #accessing }
RGReadOnlyJoinBackend >> environment2 [
	^ environment2
]

{ #category : #accessing }
RGReadOnlyJoinBackend >> environment2: anObject [
	environment2 := anObject
]

{ #category : #'as yet unclassified' }
RGReadOnlyJoinBackend >> initialize [

	super initialize.
	
	providedDefinitions := IdentityDictionary new.
	
]

{ #category : #behavior }
RGReadOnlyJoinBackend >> layoutFor: anRGBehavior [

	^ self operation: [ :backend :definition |
			backend layoutFor: definition ]
		on: anRGBehavior
	
]

{ #category : #behavior }
RGReadOnlyJoinBackend >> metaclassFor: anRGBehavior [

	^ self operation: [ :backend :definition |
			backend metaclassFor: definition ]
		on: anRGBehavior
	
]

{ #category : #behavior }
RGReadOnlyJoinBackend >> operation: aBlock on: anRGBehavior [

	"aBlock accepts backend and definition as arguments"

	| originalDefinition originalEnvironment otherEnvironment result1 result2 |

	originalDefinition := anRGBehavior propertyNamed: #originalDefinition.
	originalEnvironment := originalDefinition environment.
	otherEnvironment := (originalEnvironment == environment1)
		ifTrue: [ environment2  ]
		ifFalse: [ environment1 ].
		
	result1 := aBlock value: originalEnvironment backend value: originalDefinition.
	result2 := result1 correspondingObjectIn: otherEnvironment.
	
	result2 ifNil: [ ^ self copyFor: result1 ].
	
	^ self copyFor: (self chooseFrom: result1 and: result2).
	

	
	
	

]

{ #category : #environment }
RGReadOnlyJoinBackend >> packagesFor: anRGEnvironment do: aBlock [

	| enumerated |
	
	enumerated := IdentitySet new. 
	
	self environment1 packagesDo: [ :each |
		| corresponding | 
		corresponding := each correspondingObjectIn: environment2.
		
		enumerated add: each.
		corresponding 
			ifNil: [	aBlock value: (self copyFor: each) ]
			ifNotNil: [ 
				aBlock value: (self copyFor: (self chooseFrom: each and: corresponding)).
				enumerated add: corresponding ]].
				
	self environment2 packagesDo: [ :each | 
		(enumerated includes: each) 
			ifFalse: [ aBlock value: (self copyFor: each) ] ].
]

{ #category : #behavior }
RGReadOnlyJoinBackend >> superclassFor: anRGBehavior [

	^ self operation: [ :backend :definition |
			backend superclassFor: definition ]
		on: anRGBehavior	

	
	
	

]

{ #category : #behavior }
RGReadOnlyJoinBackend >> traitCompositionFor: anRGBehavior [

	^ self operation: [ :backend :definition |
			backend traitCompositionFor: definition ]
		on: anRGBehavior
	
]

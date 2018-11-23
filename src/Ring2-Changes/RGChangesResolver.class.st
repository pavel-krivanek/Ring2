"
My goal is to take a list of changes and assign the same origin IDs to the changes that have the same origin.
"
Class {
	#name : #RGChangesResolver,
	#superclass : #Object,
	#instVars : [
		'environment',
		'changesToIDs',
		'idsToOrigins',
		'originsToIDs',
		'lastID',
		'lastKnownPaths'
	],
	#category : 'Ring2-Changes'
}

{ #category : #'instance creation' }
RGChangesResolver class >> for: anRGEnvironment [

	^ self new 
		environment: anRGEnvironment;
		yourself.
]

{ #category : #accessing }
RGChangesResolver >> changesToIDs [
	^ changesToIDs
]

{ #category : #accessing }
RGChangesResolver >> ensureOriginId: anOrigin [

	| id |
	
	id := self originsToIDs at: anOrigin ifAbsentPut: [ self newID ].
	self idsToOrigins at: id put: anOrigin.
		
	^ id
]

{ #category : #accessing }
RGChangesResolver >> environment [
	^ environment
]

{ #category : #accessing }
RGChangesResolver >> environment: anObject [
	environment := anObject
]

{ #category : #accessing }
RGChangesResolver >> idFor: anOrigin [

	^ self originsToIDs at: anOrigin
]

{ #category : #accessing }
RGChangesResolver >> idsToOrigins [
	^ idsToOrigins
]

{ #category : #initialization }
RGChangesResolver >> initialize [

	super initialize.
	
	originsToIDs := IdentityDictionary new.
	idsToOrigins := IdentityDictionary new.
	changesToIDs := IdentityDictionary new.
	lastKnownPaths := Dictionary new.
	
	lastID := 0.
	
]

{ #category : #accessing }
RGChangesResolver >> lastID [

	^ lastID 
]

{ #category : #accessing }
RGChangesResolver >> newID [

	^ lastID := lastID + 1.
]

{ #category : #accessing }
RGChangesResolver >> originFor: anID [

	^ self idsToOrigins at: anID
]

{ #category : #accessing }
RGChangesResolver >> originsToIDs [
	^ originsToIDs
]

{ #category : #accessing }
RGChangesResolver >> resolve: aCollectionOfChanges [

	^ aCollectionOfChanges collect: [ :each | each acceptVisitor: self ].
]

{ #category : #visiting }
RGChangesResolver >> visitBehaviorAddition: anRGBehaviorAddition [

	^ self visitBehaviorChange: anRGBehaviorAddition
]

{ #category : #visiting }
RGChangesResolver >> visitBehaviorChange: anRGBehaviorChange [

	^ self visitChange: anRGBehaviorChange of: anRGBehaviorChange behavior
]

{ #category : #visiting }
RGChangesResolver >> visitBehaviorNameChange: anRGBehaviorNameChange [

	^ self visitBehaviorChange: anRGBehaviorNameChange
]

{ #category : #visiting }
RGChangesResolver >> visitBehaviorNameResolvedChange: anRGBehaviorNameResolvedChange [

	^ self visitBehaviorChange: anRGBehaviorNameResolvedChange
]

{ #category : #visiting }
RGChangesResolver >> visitChange: anRGChange of: anRGObject [
	| changeCopy id |
	changeCopy := anRGChange copyForEnvironment: self environment.
	id := nil.
	anRGObject
		ifNotNil: [ id := self ensureOriginId: anRGObject.
			changeCopy hasResolvedOriginName
				ifTrue: [ lastKnownPaths at: id put: changeCopy path ]
				ifFalse: [ lastKnownPaths
						at: id
						ifPresent: [ :knownPath | changeCopy setPath: knownPath ] ] ]
		ifNil: [ 
			id := changeCopy hasResolvedOriginName
				ifTrue: [ lastKnownPaths
						keyAtValue: changeCopy path
						ifAbsent: [ | newId |
							newId := self newID.
							lastKnownPaths at: newId put: changeCopy path.
							newId ] ]
				ifFalse: [ self newID ] ].
	changeCopy originId: id.
	^ changeCopy
]

{ #category : #visiting }
RGChangesResolver >> visitMethodChange: anRGMethodChange [

	^ self visitChange: anRGMethodChange of: anRGMethodChange method
		
	
]

{ #category : #visiting }
RGChangesResolver >> visitMethodNameResolvedChange: anRGBehaviorNameResolvedChange [

	^ self visitMethodChange: anRGBehaviorNameResolvedChange
]

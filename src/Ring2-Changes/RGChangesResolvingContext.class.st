Class {
	#name : #RGChangesResolvingContext,
	#superclass : #Object,
	#instVars : [
		'idsDictionary',
		'lastId'
	],
	#category : 'Ring2-Changes'
}

{ #category : #'instance creation' }
RGChangesResolvingContext class >> forChanges: changesCollection [

	^ self new 
		prepareFor: changesCollection;
		yourself.
]

{ #category : #initialization }
RGChangesResolvingContext >> ensureIdFor: anRGObject proposed: proposedId [

	^ proposedId
		ifNotNil: [ 
			idsDictionary at: proposedId put: anRGObject.
			proposedId ]
		ifNil: [ 
			idsDictionary keyAtValue: anRGObject ifAbsent: [ 
				| newId |
				newId := self newId.
				idsDictionary at: newId put: anRGObject.
				newId ] ]


]

{ #category : #initialization }
RGChangesResolvingContext >> initialize [

	super initialize.
	
	idsDictionary := IdentityDictionary new.
	lastId := 0.
]

{ #category : #'as yet unclassified' }
RGChangesResolvingContext >> knowsId: anId [

	^ idsDictionary includesKey: anId
]

{ #category : #accessing }
RGChangesResolvingContext >> lastId [

	^ lastId
]

{ #category : #initialization }
RGChangesResolvingContext >> newId [

	| anId | 
	
	anId := lastId + 1.
	
	[ idsDictionary includesKey: anId ] whileTrue: [ anId := anId + 1 ].

	lastId := anId.

	^ anId
	
]

{ #category : #initialization }
RGChangesResolvingContext >> originFor: anId [ 

	^ self originFor: anId ifAbsent: [ RGResolvingError signal ] 
]

{ #category : #initialization }
RGChangesResolvingContext >> originFor: anId ifAbsent: aBlock [

	^ idsDictionary at: anId ifAbsent: aBlock
]

{ #category : #'as yet unclassified' }
RGChangesResolvingContext >> prepareFor: changesCollection [

	"pre-register all existing IDs to avoid conflicts of the newly generated IDs"

	changesCollection do: [ :each |
		each hasOriginId ifTrue: [ idsDictionary at: each originId put: nil ] ]
]

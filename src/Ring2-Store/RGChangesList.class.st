Class {
	#name : #RGChangesList,
	#superclass : #RGChange,
	#instVars : [
		'changes'
	],
	#category : 'Ring2-Store'
}

{ #category : #visiting }
RGChangesList >> acceptVisitor: aVisitor [

	aVisitor visitChangesList: self
]

{ #category : #initialization }
RGChangesList >> add: anRGChange [

	environment 
		ifNil: [ self environment: anRGChange environment ]
		ifNotNil: [ 
			self environment = anRGChange environment 
				ifFalse: [ RGWrongEnvironment signal ] ].
	
	self changes add: anRGChange.
	
	
]

{ #category : #actions }
RGChangesList >> apply: resolvedChanges in: anRGEnvironment [

	| resolvingContext |
	
	resolvingContext := RGChangesResolvingContext forChanges: self changes.

	resolvedChanges do: [ :each | each applyIn: anRGEnvironment inContext: resolvingContext ]
]

{ #category : #actions }
RGChangesList >> applyIn: anRGEnvironment [

	| resolved |
	resolved := self resolveOrigins.
	self apply: resolved in: anRGEnvironment.

]

{ #category : #actions }
RGChangesList >> applyIn: anEnvironment inContext: anRGChangesResolvingContext [

	^ self changes collect: [ :each |
		each applyIn: anEnvironment inContext: anRGChangesResolvingContext ]

]

{ #category : #initialization }
RGChangesList >> changes [

	^ changes
]

{ #category : #initialization }
RGChangesList >> initialize [

	super initialize.
	
	changes := OrderedCollection new.
]

{ #category : #initialization }
RGChangesList >> isEmpty [

	^ self changes isEmpty
]

{ #category : #initialization }
RGChangesList >> resolveOrigins [

	"Try to resolve origin for all changes from the changes in the list"
	
	| resolver |
	
	resolver := RGChangesResolver for: self environment.
	^ resolver resolve: changes.
]

{ #category : #actions }
RGChangesList >> revertIn: anEnvironment inContext: anRGChangesResolvingContext [

	^ self changes reversed collect: [ :each |
		each revertIn: anEnvironment inContext: anRGChangesResolvingContext ]

]

{ #category : #initialization }
RGChangesList >> size [

	^ self changes size
]

Class {
	#name : #RGChange,
	#superclass : #Object,
	#instVars : [
		'environment',
		'properties',
		'originId'
	],
	#category : 'Ring2-Changes'
}

{ #category : #visiting }
RGChange >> acceptVisitor: aVisitor [

	self subclassResponsibility
]

{ #category : #actions }
RGChange >> applyIn: anEnvironment [

	^ self applyIn: anEnvironment inContext: self newResolvingContext
]

{ #category : #actions }
RGChange >> applyIn: anEnvironment inContext: anRGChangesResolvingContext [

	self subclassResponsibility 
]

{ #category : #accessing }
RGChange >> changes [

	^ { self }
]

{ #category : #copying }
RGChange >> copy [

	^ self copyForEnvironment: self environment.
]

{ #category : #copying }
RGChange >> copyForEnvironment: anRGEnvironment [

	^ self shallowCopy postCopy 
		environment: anRGEnvironment;
		yourself.
]

{ #category : #accessing }
RGChange >> environment [
	^ environment
]

{ #category : #accessing }
RGChange >> environment: anObject [
	environment := anObject
]

{ #category : #private }
RGChange >> hasOriginId [

	^ originId notNil
]

{ #category : #properties }
RGChange >> hasProperties [

	^ properties isEmptyOrNil not
]

{ #category : #properties }
RGChange >> hasPropertyNamed: propertyName [
	
	^ self hasProperties
		ifTrue: [ properties includesKey: propertyName ]	
		ifFalse:[ false ].

]

{ #category : #testing }
RGChange >> isBehaviorChange [

	^ false
]

{ #category : #testing }
RGChange >> isMethodChange [

	^ false
]

{ #category : #actions }
RGChange >> newResolvingContext [

	^ RGChangesResolvingContext forChanges: { self }
]

{ #category : #accessing }
RGChange >> originId [
	^ originId
]

{ #category : #accessing }
RGChange >> originId: anObject [
	originId := anObject
]

{ #category : #copying }
RGChange >> postCopy [

	super postCopy.
	
	originId := originId copy.
	properties := properties copy.
	
	
	
]

{ #category : #properties }
RGChange >> properties [

	^ properties ifNil: [ properties := IdentityDictionary new ]	
]

{ #category : #properties }
RGChange >> propertyNamed: propertyName [ 
	
	^ self
		propertyNamed: propertyName
		ifAbsent: [ nil ]
]

{ #category : #properties }
RGChange >> propertyNamed: annotationName ifAbsent: exceptionBlock [ 

	^ self properties
			at: annotationName
			ifAbsent: [ exceptionBlock value ]
]

{ #category : #properties }
RGChange >> propertyNamed: annotationName ifAbsentPut: blockValue [ 

	^self properties
		at: annotationName
		ifAbsentPut: blockValue
]

{ #category : #properties }
RGChange >> propertyNamed: annotationName put: value [ 

	self properties
		at: annotationName
		put: value
]

{ #category : #properties }
RGChange >> propertyNames [
	
	self hasProperties
		ifFalse: [ ^ OrderedCollection new ].
	^ properties keys
]

{ #category : #properties }
RGChange >> removePropertyNamed: propertyName [ 
	"Remove the annotation named <annotationName>. Fails quietly if there 
	is no annotation with the given name."
	
	(self hasPropertyNamed: propertyName)
		ifTrue:[ properties removeKey: propertyName ]
]

{ #category : #actions }
RGChange >> revertIn: anRGEnvironment [

	| resolver resolvedChanges resolvingContext results |
	
	resolver := RGChangesResolver for: self environment.
	resolvedChanges := resolver resolve: self changes.
	
	resolvingContext := RGChangesResolvingContext forChanges: resolvedChanges.

	results := resolvedChanges reversed collect: [ :each | 
		each revertIn: anRGEnvironment inContext: resolvingContext ].
	
	^ results size = 1
		ifTrue: [ results anyOne ]
		ifFalse: [ results ]
]

{ #category : #actions }
RGChange >> revertIn: anRGEnvironment inContext: resolvingContext [

	self subclassResponsibility 
]

{ #category : #initialization }
RGChange >> setPath: aCollectionOfNames [

	self subclassResponsibility 
]

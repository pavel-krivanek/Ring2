Class {
	#name : #RG2ClassDefinitionCompiler,
	#superclass : #Object,
	#instVars : [
		'environment',
		'definitionString',
		'requestor'
	],
	#category : 'Calypso-Ring2'
}

{ #category : #'instance creation' }
RG2ClassDefinitionCompiler class >> on: aRG2Environment [ 
	^self new 
		environment: aRG2Environment 
]

{ #category : #accessing }
RG2ClassDefinitionCompiler >> definitionString [
	^ definitionString
]

{ #category : #accessing }
RG2ClassDefinitionCompiler >> definitionString: anObject [
	definitionString := anObject
]

{ #category : #accessing }
RG2ClassDefinitionCompiler >> environment [
	^ environment
]

{ #category : #accessing }
RG2ClassDefinitionCompiler >> environment: anObject [
	environment := anObject
]

{ #category : #'public access' }
RG2ClassDefinitionCompiler >> evaluate [
	
	| importer class createdClass |
	
	importer := Ring2ChunkImporter new.
	
	importer fileInFrom: (definitionString, '!') readStream.
	
	class := importer environment ask behaviors detect: [:each | 
		each isRing2Resolved and: [each superclass isRing2Resolved ]].

	importer := Ring2ChunkImporter new.
	importer environment: environment.
	importer fileInFrom: (definitionString, '!') readStream.
	
	createdClass := environment ask behaviorNamed: class name.

	createdClass superclass metaclass metaclass isRing2Resolved ifTrue: [ 
		environment cleanWithMetaclassNamed: createdClass superclass metaclass metaclass name
		].
	^createdClass
]

{ #category : #'as yet unclassified' }
RG2ClassDefinitionCompiler >> logged: aBoolean [
]

{ #category : #'as yet unclassified' }
RG2ClassDefinitionCompiler >> new [
	^self
]

{ #category : #'as yet unclassified' }
RG2ClassDefinitionCompiler >> requestor: anObject [ 
	requestor := anObject
]

{ #category : #'as yet unclassified' }
RG2ClassDefinitionCompiler >> source: aString [ 
	definitionString := aString
]

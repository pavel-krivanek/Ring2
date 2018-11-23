Class {
	#name : #RGMethodNameResolvedChange,
	#superclass : #RGMethodChange,
	#instVars : [
		'newName'
	],
	#category : 'Ring2-Changes'
}

{ #category : #'as yet unclassified' }
RGMethodNameResolvedChange class >> for: anRGMethod newName: newName [

	^ (self for: anRGMethod)
		newName: newName;
		yourself.
]

{ #category : #visiting }
RGMethodNameResolvedChange >> acceptVisitor: aVisitor [

	^ aVisitor visitMethodNameResolvedChange: self
]

{ #category : #visiting }
RGMethodNameResolvedChange >> applyIn: anRGEnvironment inContext: resolvingContext [

	| anRGMethod |

	anRGMethod := self resolvedMethodFrom: resolvingContext in: anRGEnvironment.
	
	anRGMethod name: newName.
	
	^ anRGMethod
]

{ #category : #visiting }
RGMethodNameResolvedChange >> newName [
	^ newName
]

{ #category : #visiting }
RGMethodNameResolvedChange >> newName: aNewName [

	newName := aNewName.
	methodName := aNewName.

]

{ #category : #visiting }
RGMethodNameResolvedChange >> postCopy [

	super postCopy.
	
	newName := newName copy.
	
	
	
]

{ #category : #visiting }
RGMethodNameResolvedChange >> revertIn: anRGEnvironment inContext: resolvingContext [

	| anRGMethod |
	
	anRGMethod := self resolvedMethodOrNilFrom: resolvingContext in: anRGEnvironment withName: newName behaviorName: behaviorName.
	anRGMethod ifNil: [ RGResolvingError signal ].
		
	anRGMethod unresolveName.
	
	^ anRGMethod
		
	
]

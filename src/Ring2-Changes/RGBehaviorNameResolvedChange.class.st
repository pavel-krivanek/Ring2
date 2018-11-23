Class {
	#name : #RGBehaviorNameResolvedChange,
	#superclass : #RGBehaviorChange,
	#instVars : [
		'newName'
	],
	#category : 'Ring2-Changes'
}

{ #category : #'as yet unclassified' }
RGBehaviorNameResolvedChange class >> for: anRGBehavior newName: newName [

	^ (self for: anRGBehavior)
		newName: newName;
		yourself.
]

{ #category : #visiting }
RGBehaviorNameResolvedChange >> acceptVisitor: aVisitor [

	^ aVisitor visitBehaviorNameResolvedChange: self
]

{ #category : #actions }
RGBehaviorNameResolvedChange >> applyIn: anRGEnvironment inContext: resolvingContext [

	| anRGBehavior |

	anRGBehavior := self resolvedBehaviorFrom: resolvingContext in: anRGEnvironment.
	
	anRGBehavior name: newName.
	
	^ anRGBehavior

]

{ #category : #accessing }
RGBehaviorNameResolvedChange >> newName [
	^ newName
]

{ #category : #accessing }
RGBehaviorNameResolvedChange >> newName: aNewName [

	newName := aNewName.
	behaviorName := aNewName.
	
	
	

	
]

{ #category : #copying }
RGBehaviorNameResolvedChange >> postCopy [

	super postCopy.
	
	newName := newName copy.
	
	
	
]

{ #category : #actions }
RGBehaviorNameResolvedChange >> revertIn: anRGEnvironment inContext: resolvingContext [

	| anRGBehavior |
	
	anRGBehavior := self resolvedBehaviorOrNilFrom: resolvingContext in: anRGEnvironment withName: newName.
	anRGBehavior ifNil: [ RGResolvingError signal ].
		
	anRGBehavior unresolveName.
	
	^ anRGBehavior
		
	
]

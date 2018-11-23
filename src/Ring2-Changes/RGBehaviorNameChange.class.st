Class {
	#name : #RGBehaviorNameChange,
	#superclass : #RGBehaviorChange,
	#instVars : [
		'oldName',
		'newName'
	],
	#category : 'Ring2-Changes'
}

{ #category : #'as yet unclassified' }
RGBehaviorNameChange class >> for: anRGBehavior oldName: oldName newName: newName [

	^ (self for: anRGBehavior)
		oldName: oldName newName: newName;
		yourself.
]

{ #category : #visiting }
RGBehaviorNameChange >> acceptVisitor: aVisitor [

	^ aVisitor visitBehaviorNameChange: self
]

{ #category : #actions }
RGBehaviorNameChange >> applyIn: anRGEnvironment inContext: resolvingContext [

	| anRGBehavior |

	anRGBehavior := self resolvedBehaviorFrom: resolvingContext in: anRGEnvironment.
			
	anRGBehavior name: newName.
	
	^ anRGBehavior
		
]

{ #category : #accessing }
RGBehaviorNameChange >> newName [
	^ newName
]

{ #category : #accessing }
RGBehaviorNameChange >> oldName [
	^ oldName
]

{ #category : #accessing }
RGBehaviorNameChange >> oldName: anOldName newName: aNewName [

	"We do not know if create the change record before or after the change is actually done."
	
	oldName := anOldName.
	newName := aNewName.
	behaviorName := anOldName 
	
	

	
]

{ #category : #copying }
RGBehaviorNameChange >> postCopy [

	super postCopy.
	
	oldName := oldName copy.
	newName := newName copy.
	
	
	
]

{ #category : #actions }
RGBehaviorNameChange >> revertIn: anRGEnvironment inContext: resolvingContext [

	| anRGBehavior |
	
	anRGBehavior := self resolvedBehaviorOrNilFrom: resolvingContext in: anRGEnvironment withName: newName.
	anRGBehavior ifNil: [ RGResolvingError signal ].
	
	anRGBehavior name: oldName.
	
	^ anRGBehavior
		
	 
]

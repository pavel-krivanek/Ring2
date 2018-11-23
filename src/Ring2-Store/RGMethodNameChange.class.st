Class {
	#name : #RGMethodNameChange,
	#superclass : #RGMethodChange,
	#instVars : [
		'oldName',
		'newName'
	],
	#category : 'Ring2-Store'
}

{ #category : #visiting }
RGMethodNameChange >> acceptVisitor: aVisitor [

	^ aVisitor visitMethodNameChange: self
]

{ #category : #visiting }
RGMethodNameChange >> applyIn: anRGEnvironment inContext: resolvingContext [

	| anRGBMethod |

	anRGBMethod := self resolvedMethodFrom: resolvingContext in: anRGEnvironment.
			
	anRGBMethod name: newName.
	
	^ anRGBMethod
		
]

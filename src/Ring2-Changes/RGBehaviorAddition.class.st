Class {
	#name : #RGBehaviorAddition,
	#superclass : #RGBehaviorChange,
	#instVars : [
		'behaviorStrategyClassName'
	],
	#category : 'Ring2-Changes'
}

{ #category : #visiting }
RGBehaviorAddition >> acceptVisitor: aVisitor [

	^ aVisitor visitBehaviorAddition: self
]

{ #category : #actions }
RGBehaviorAddition >> applyIn: anRGEnvironment inContext: resolvingContext [

	| anRGBehavior newBehavior |

	anRGBehavior := self resolvedBehaviorOrNilFrom: resolvingContext in: anRGEnvironment.
	
	anRGBehavior ifNotNil: [ 
		"the behavior already exists in the environment"
		^ self ].
	
	newBehavior := RGBehavior parent: anRGEnvironment behaviorStrategy: self newStrategy.
	anRGEnvironment addBehavior: newBehavior.
		
	"we need to register the new class to the resolving context to allow the next changes
	related to this class to be performed"
	resolvingContext ensureIdFor: newBehavior proposed: self originId.
	
	^ newBehavior


]

{ #category : #actions }
RGBehaviorAddition >> behavior: anRGBehavior [

	super behavior: anRGBehavior.
	
	self behaviorStrategyClassName: anRGBehavior behaviorStrategy class name.
	
	
]

{ #category : #accessing }
RGBehaviorAddition >> behaviorStrategyClassName [
	^ behaviorStrategyClassName
]

{ #category : #accessing }
RGBehaviorAddition >> behaviorStrategyClassName: anObject [
	behaviorStrategyClassName := anObject
]

{ #category : #actions }
RGBehaviorAddition >> newStrategy [

	| strategyClass |
	
	strategyClass := self class environment at: self behaviorStrategyClassName.
	^ strategyClass basicNew.

]

{ #category : #copying }
RGBehaviorAddition >> postCopy [

	super postCopy.
	
	behaviorStrategyClassName := behaviorStrategyClassName copy.
	
	
	
]

{ #category : #actions }
RGBehaviorAddition >> revertIn: anRGEnvironment inContext: resolvingContext [

	| anRGBehavior |

	anRGBehavior := self resolvedBehaviorFrom: resolvingContext in: anRGEnvironment.

	anRGEnvironment removeBehavior: anRGBehavior.
	
	^ anRGBehavior
]

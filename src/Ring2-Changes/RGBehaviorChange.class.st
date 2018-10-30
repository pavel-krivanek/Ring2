"
I'm a change related to a behavior. I must identify some way the behavior that is being changes (the origin). There are two options for that:

 1) The name of the behavior is known so I can identify it in the enviroment using it. It that case
    I do not need to store direct reference to the behavior, just its name (behaviorName)
 2) The name of the behavior is unresolved. In that case I need to set the direct reference
    to the behavior (behavior)
"
Class {
	#name : #RGBehaviorChange,
	#superclass : #RGChange,
	#instVars : [
		'behavior',
		'behaviorName'
	],
	#category : 'Ring2-Changes'
}

{ #category : #'instance creation' }
RGBehaviorChange class >> for: anRGBehavior [

	^ self new
		behavior: anRGBehavior;
		yourself
]

{ #category : #accessing }
RGBehaviorChange >> behavior [

	^ behavior

]

{ #category : #accessing }
RGBehaviorChange >> behavior: anRGBehavior [

	self environment: anRGBehavior environment.
	
	behavior := anRGBehavior.
	
	behaviorName := anRGBehavior resolvedNameOrNil.
]

{ #category : #accessing }
RGBehaviorChange >> behaviorName [

	^ behaviorName
	
]

{ #category : #resolving }
RGBehaviorChange >> clean [

	"clean the reference to the acutal behavior"
	
	behavior := nil
]

{ #category : #private }
RGBehaviorChange >> correspondingBehaviorFrom: anRGEnvironment named: aBehaviorName [

	^ self hasResolvedOriginName 	
		ifTrue: [ anRGEnvironment ask behaviorNamed: aBehaviorName ]
		ifFalse: [ nil ] 
]

{ #category : #private }
RGBehaviorChange >> correspondingBehaviorFrom: anRGEnvironment named: aBehaviorName using: resolvingContext [

	^ self correspondingBehaviorFrom: anRGEnvironment named: aBehaviorName using: resolvingContext originId: self originId
]

{ #category : #private }
RGBehaviorChange >> correspondingBehaviorFrom: anRGEnvironment named: aBehaviorName using: resolvingContext originId: anId [

	| behaviorKnownToContext |

	behaviorKnownToContext := anId 
		ifNotNil: [ resolvingContext originFor: anId ifAbsent: [ nil ] ].
		
	^ behaviorKnownToContext 		
		ifNil: [ self correspondingBehaviorFrom: anRGEnvironment named: aBehaviorName   ]


]

{ #category : #private }
RGBehaviorChange >> hasKnownBehavior [

	^ behavior notNil
]

{ #category : #testing }
RGBehaviorChange >> hasResolvedOriginName [
	
	"check if we know the behavior name"
	^ behaviorName notNil
]

{ #category : #testing }
RGBehaviorChange >> isBehaviorChange [

	^ true
]

{ #category : #accessing }
RGBehaviorChange >> path [ 

	^ { behaviorName }
]

{ #category : #copying }
RGBehaviorChange >> postCopy [

	super postCopy.
	
	behaviorName := behaviorName copy.
	
	
	
]

{ #category : #actions }
RGBehaviorChange >> resolvedBehaviorFrom: resolvingContext in: anRGEnvironment [

	^ (self resolvedBehaviorOrNilFrom: resolvingContext in: anRGEnvironment)
		ifNil: [ RGResolvingError signal ]
]

{ #category : #actions }
RGBehaviorChange >> resolvedBehaviorOrNilFrom: resolvingContext in: anRGEnvironment [

	^ self resolvedBehaviorOrNilFrom: resolvingContext in: anRGEnvironment withName: behaviorName

]

{ #category : #actions }
RGBehaviorChange >> resolvedBehaviorOrNilFrom: resolvingContext in: anRGEnvironment withName: aBehaviorName [

	| anRGBehavior |

	anRGBehavior := ((self environment == anRGEnvironment) and: [ self hasKnownBehavior ])
		ifTrue: [ behavior ]
		ifFalse: [ self correspondingBehaviorFrom: anRGEnvironment named: aBehaviorName using: resolvingContext  ].
	
	anRGBehavior ifNotNil: [ 
		self originId: (resolvingContext ensureIdFor: anRGBehavior proposed: self originId).
		behavior := anRGBehavior. ].
	
	^ anRGBehavior
]

{ #category : #initialization }
RGBehaviorChange >> setPath: aCollectionOfNames [

	behaviorName := aCollectionOfNames first.
]

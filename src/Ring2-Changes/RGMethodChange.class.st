Class {
	#name : #RGMethodChange,
	#superclass : #RGChange,
	#instVars : [
		'method',
		'behaviorName',
		'methodName'
	],
	#category : 'Ring2-Changes'
}

{ #category : #'instance creation' }
RGMethodChange class >> for: anRGMethod [

	^ self new
		method: anRGMethod;
		yourself
]

{ #category : #accessing }
RGMethodChange >> behaviorName [

	^ behaviorName
	
]

{ #category : #accessing }
RGMethodChange >> clean [

	"clean the reference to the acutal method"
	
	method := nil
]

{ #category : #accessing }
RGMethodChange >> correspondingMethodFrom: anRGEnvironment named: aMethodNameName in: aBehaviorName [

	^ self hasResolvedOriginName 	
		ifTrue: [ (anRGEnvironment ask behaviorNamed: aBehaviorName) localMethodNamed: aMethodNameName ifAbsent: [ nil ] ]
		ifFalse: [ nil ] 
]

{ #category : #accessing }
RGMethodChange >> correspondingMethodFrom: anRGEnvironment named: aMethodName in: aBehaviorName using: resolvingContext [

	^ self correspondingMethodFrom: anRGEnvironment named: aMethodName in: aBehaviorName using: resolvingContext originId: self originId
]

{ #category : #accessing }
RGMethodChange >> correspondingMethodFrom: anRGEnvironment named: aMethodName in: aBehaviorName using: resolvingContext originId: anId [

	| methodKnownToContext |

	methodKnownToContext := anId 
		ifNotNil: [ resolvingContext originFor: anId ifAbsent: [ nil ] ].
		
	^ methodKnownToContext 		
		ifNil: [ self correspondingMethodFrom: anRGEnvironment named: aMethodName in: aBehaviorName  ]


]

{ #category : #accessing }
RGMethodChange >> hasKnownMethod [

	^ method notNil
]

{ #category : #accessing }
RGMethodChange >> hasResolvedOriginName [
	
	"check if we know the behavior name"
	^ behaviorName notNil and: [ methodName notNil ]
]

{ #category : #testing }
RGMethodChange >> isMethodChange [

	^ true
]

{ #category : #accessing }
RGMethodChange >> method [

	^ method
]

{ #category : #accessing }
RGMethodChange >> method: anRGMethod [

	self environment: anRGMethod environment.
	
	method := anRGMethod.
	
	behaviorName := anRGMethod parent resolvedNameOrNil.
	methodName := anRGMethod resolvedNameOrNil.
]

{ #category : #accessing }
RGMethodChange >> methodName [

	^ methodName
	
]

{ #category : #accessing }
RGMethodChange >> path [

	^ { behaviorName. methodName }
]

{ #category : #accessing }
RGMethodChange >> postCopy [

	super postCopy.
	
	behaviorName := behaviorName copy.
	methodName := methodName copy.
	
	
	
]

{ #category : #'as yet unclassified' }
RGMethodChange >> resolvedMethodFrom: resolvingContext in: anRGEnvironment [

	^ (self resolvedMethodOrNilFrom: resolvingContext in: anRGEnvironment)
		ifNil: [ RGResolvingError signal ]
]

{ #category : #'as yet unclassified' }
RGMethodChange >> resolvedMethodOrNilFrom: resolvingContext in: anRGEnvironment [

	^ self resolvedMethodOrNilFrom: resolvingContext in: anRGEnvironment withName: methodName behaviorName: behaviorName

]

{ #category : #'as yet unclassified' }
RGMethodChange >> resolvedMethodOrNilFrom: resolvingContext in: anRGEnvironment withName: aMethodName behaviorName: aBehaviorName [

	| anRGMethod |

	anRGMethod := ((self environment == anRGEnvironment) and: [ self hasKnownMethod ])
		ifTrue: [ method ]
		ifFalse: [ 
			self 
				correspondingMethodFrom: anRGEnvironment
				named: aMethodName
				in: aBehaviorName
				using: resolvingContext ].
	anRGMethod
		ifNotNil: [ self
			originId: (resolvingContext ensureIdFor: anRGMethod proposed: self originId).
			method := anRGMethod ].
	^ anRGMethod
]

{ #category : #initialization }
RGMethodChange >> setPath: aCollectionOfNames [

	behaviorName := aCollectionOfNames first.
	methodName := aCollectionOfNames second.
]

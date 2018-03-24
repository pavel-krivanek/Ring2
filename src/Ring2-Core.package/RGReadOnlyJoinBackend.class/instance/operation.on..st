behavior
operation: aBlock on: anRGBehavior

	"aBlock accepts backend and definition as arguments"

	| originalDefinition originalEnvironment otherEnvironment result1 result2 |

	originalDefinition := anRGBehavior propertyNamed: #originalDefinition.
	originalEnvironment := originalDefinition environment.
	otherEnvironment := (originalEnvironment == environment1)
		ifTrue: [ environment2  ]
		ifFalse: [ environment1 ].
		
	result1 := aBlock value: originalEnvironment backend value: originalDefinition.
	result2 := result1 correspondingObjectIn: otherEnvironment.
	
	result2 ifNil: [ ^ self copyFor: result1 ].
	
	^ self copyFor: (self chooseFrom: result1 and: result2).
	

	
	
	

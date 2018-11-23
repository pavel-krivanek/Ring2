Extension { #name : #RGObject }

{ #category : #'*Ring2-Experiments' }
RGObject >> canMergeSimplyWith: anRGObject [

	^ (self resolvedProperties intersection: anRGObject resolvedProperties) isEmpty.
]

{ #category : #'*Ring2-Experiments' }
RGObject >> canMergeSimplyWithoutName: anRGObject [

	| intersection |
	
	intersection := self resolvedProperties intersection: anRGObject resolvedProperties.
	^ intersection isEmpty or: [intersection = #(name)]
]

{ #category : #'*Ring2-Experiments' }
RGObject >> canMergeWith: anRGObject [

	^ (self nameOrNil == anRGObject nameOrNil)

]

{ #category : #'*Ring2-Experiments' }
RGObject >> canMergeWith: anRGObject visited: visitedDefinitions [

	(visitedDefinitions includes: self) ifTrue: [ ^ true ].

	(self hasResolvedName not or: [ anRGObject hasResolvedName not]) ifTrue: [ ^ true ].
	
	^ (self resolvedNameOrNil == anRGObject resolvedNameOrNil)

]

{ #category : #'*Ring2-Experiments' }
RGObject >> compatibleWith: anRGObject [

	(self class = anRGObject class)
		ifFalse: [ ^ false ].
		
	(self canMergeSimplyWith: anRGObject) ifTrue: [ ^ true ].
		
	^ (self name = anRGObject name)
]

{ #category : #'*Ring2-Experiments' }
RGObject >> copyForEnvironment: anRGEnvironment [

	| newDefinition |
	
	newDefinition := self copy.
	newDefinition propertyNamed: #environment put: anRGEnvironment.
	newDefinition propertyNamed: #originalDefinition put: self.
	^ newDefinition

]

{ #category : #'*Ring2-Experiments' }
RGObject >> correspondingObjectIn: anRGEnvironment [

	"find suitable object that corresponds to the definition in the oher environmnet anRGEnvironment"
	self subclassResponsibility.
]

{ #category : #'*Ring2-Experiments' }
RGObject >> findSuitableParentIn: anRGEnvironment [

	^ self subclassResponsibility 
]

{ #category : #'*Ring2-Experiments' }
RGObject >> merge: anRGObject [

	| sourceHasResolvedName |
	
	sourceHasResolvedName := anRGObject hasResolvedName.
	
	((self hasResolvedName) 
		and: ( sourceHasResolvedName 
		and: [ self name ~~ anRGObject name]))
			ifTrue: [ RGMergeError property: #name target: self source: anRGObject ].
	
	sourceHasResolvedName
		ifTrue: [ self name: anRGObject name ].


]

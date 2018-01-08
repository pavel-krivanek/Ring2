Extension { #name : #RG2BehaviorDefinition }

{ #category : #'*Ring2-RuntimeSupport' }
RG2BehaviorDefinition >> allSuperclasses [

	| temp |
	^ ((self superclass == nil) or: [ self superclass == self ])
		ifTrue: [ OrderedCollection new]
		ifFalse: [temp := self superclass allSuperclasses.
			temp addFirst: self superclass.
			temp] 
]

{ #category : #'*Ring2-RuntimeSupport' }
RG2BehaviorDefinition >> binding [

	^ self environment bindingOf: self name
]

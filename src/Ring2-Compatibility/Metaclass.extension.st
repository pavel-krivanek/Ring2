Extension { #name : #Metaclass }

{ #category : #'*Ring2-Compatibility' }
Metaclass >> asRGDefinition [

	^ self theNonMetaClass asRGDefinition theMetaClass
]

{ #category : #'*Ring2-Compatibility' }
Metaclass >> asRingDefinitionIn: anRGEnvironment [

	^ RGMetaclass named: self name parent: anRGEnvironment.

]

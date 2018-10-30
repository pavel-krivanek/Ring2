Extension { #name : #TApplyingOnClassSide }

{ #category : #'*Ring2-Compatibility' }
TApplyingOnClassSide >> asRGDefinition [

	^ self theNonMetaClass asRGDefinition theMetaClass
]

Extension { #name : #RPackage }

{ #category : #'*Ring2-Compatibility' }
RPackage >> asRGDefinition [
	^RGPackageDefinition named: self name asSymbol
]

{ #category : #'*Ring2-Compatibility' }
RPackage >> asRingDefinitionIn: anRGEnvironment [

	| pkg parent|
	
	pkg := self asRingMinimalDefinitionIn: anRGEnvironment.
	
	parent := pkg findSuitableParentIn: anRGEnvironment.
	pkg parent: parent.
	
	^ pkg
]

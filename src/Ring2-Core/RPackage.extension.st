Extension { #name : #RPackage }

{ #category : #'*Ring2-Core' }
RPackage >> asRingMinimalDefinitionIn: anRGEnvironment [

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGPackage named: self name asSymbol parent: anRGEnvironment ]
]

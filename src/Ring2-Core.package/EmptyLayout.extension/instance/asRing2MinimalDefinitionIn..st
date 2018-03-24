*Ring2-Core
asRing2MinimalDefinitionIn: aRGEnvironment

	| aHost |
	
	aHost := self host 
		ifNotNil: [ :foundHost | foundHost asRing2MinimalDefinitionIn: aRGEnvironment ]
		ifNil: [ self error: 'Cannot create model for an empty layout without a host'].

	^ aRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGEmptyLayout parent: aHost]

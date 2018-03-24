*Ring2-Core
asRing2MinimalDefinitionIn: anRGEnvironment

	| aHost |
	
	aHost := self host 
		ifNotNil: [ :foundHost | foundHost asRing2MinimalDefinitionIn: anRGEnvironment ]
		ifNil: [ self error: 'Cannot create model for an empty layout without a host'].

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGEmptyLayout parent: aHost]

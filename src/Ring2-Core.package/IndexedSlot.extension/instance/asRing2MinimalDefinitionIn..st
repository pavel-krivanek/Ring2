*Ring2-Core
asRing2MinimalDefinitionIn: anRGEnvironment

	^ self class == IndexedSlot 
		ifTrue: [ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
			RGIndexedSlot named: self name asSymbol parent: (self definingClass classLayout asRing2MinimalDefinitionIn: anRGEnvironment)]]
		ifFalse: [ super asRing2MinimalDefinitionIn: anRGEnvironment ]
*Ring2-Core
asRing2MinimalDefinitionIn: aRGEnvironment

	^ self class == IndexedSlot 
		ifTrue: [ aRGEnvironment backend definitionFor: self ifAbsentRegister: [
			RGIndexedSlot named: self name asSymbol parent: (self definingClass classLayout asRing2MinimalDefinitionIn: aRGEnvironment)]]
		ifFalse: [ super asRing2MinimalDefinitionIn: aRGEnvironment ]
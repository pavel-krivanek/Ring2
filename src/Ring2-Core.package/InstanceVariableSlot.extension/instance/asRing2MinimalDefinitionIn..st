*Ring2-Core
asRing2MinimalDefinitionIn: aRGEnvironment
	
	^ self class == InstanceVariableSlot 
		ifTrue: [
			aRGEnvironment backend definitionFor: self ifAbsentRegister: [
				RGInstanceVariableSlot
					named: self name asSymbol
					parent:
						(self definingClass classLayout asRing2MinimalDefinitionIn: aRGEnvironment)]]
		ifFalse: [ super asRing2MinimalDefinitionIn: aRGEnvironment ]


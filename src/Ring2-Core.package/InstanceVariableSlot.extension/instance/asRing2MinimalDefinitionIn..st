*Ring2-Core
asRing2MinimalDefinitionIn: anRGEnvironment
	
	^ self class == InstanceVariableSlot 
		ifTrue: [
			anRGEnvironment backend definitionFor: self ifAbsentRegister: [
				RGInstanceVariableSlot
					named: self name asSymbol
					parent:
						(self definingClass classLayout asRing2MinimalDefinitionIn: anRGEnvironment)]]
		ifFalse: [ super asRing2MinimalDefinitionIn: anRGEnvironment ]


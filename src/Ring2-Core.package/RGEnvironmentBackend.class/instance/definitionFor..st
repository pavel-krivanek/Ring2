accesing
definitionFor: anObject 

	^ self definitionFor: anObject ifAbsentRegister: [ anObject ensureRing2DefinitionIn: self environment ]

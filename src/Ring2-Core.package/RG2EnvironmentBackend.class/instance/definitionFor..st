accessing
definitionFor: anObject 

	^ self definitionFor: anObject ifAbsentRegister: [ anObject asRing2DefinitionIn: self environment ]

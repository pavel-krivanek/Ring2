as yet unclassified
definitionFor: anObject 

	^ self definitionFor: anObject ifAbsentRegister: [ anObject asRing2DefinitionIn: self environment ]

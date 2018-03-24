as yet unclassified
definitionFor: anObject 

	^ self definitionFor: anObject ifAbsentRegister: [ anObject ensureRing2DefinitionIn: self environment ]

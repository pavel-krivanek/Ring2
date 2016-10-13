as yet unclassified
behaviorsFor: aRG2Environment do: aBlock

	{ Color. Color class. Object. Object class. ProtoObject. ProtoObject class. Class. Class class. ClassDescription. ClassDescription class. Behavior. Behavior class. Metaclass. Metaclass class. } do: [:each |
		| def | 
		def := self definitionFor: each ifAbsentRegister: [each asRing2MinimalDefinitionIn: aRG2Environment].
		aBlock value: def.].
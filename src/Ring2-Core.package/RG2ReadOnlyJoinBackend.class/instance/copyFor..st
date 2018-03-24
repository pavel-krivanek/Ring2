as yet unclassified
copyFor: anRGObject

	^ self definitionFor: anRGObject ifAbsentRegister: [
		anRGObject copyForEnvironment: self environment].
as yet unclassified
copyFor: aRG2Definition

	^ self definitionFor: aRG2Definition ifAbsentRegister: [
		aRG2Definition copyForEnvironment: self environment].
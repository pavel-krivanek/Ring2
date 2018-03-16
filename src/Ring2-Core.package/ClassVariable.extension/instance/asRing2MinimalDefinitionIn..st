*Ring2-Core
asRing2MinimalDefinitionIn: aRG2Environment 

	^ aRG2Environment backend definitionFor: self ifAbsentRegister: [
		| def realClass |
		realClass := Smalltalk allClasses detect: [ :each | each classVariables includes: self ].
		def := RG2ClassVariable named: self key asSymbol parent: (realClass asRing2MinimalDefinitionIn: aRG2Environment).
		def ].
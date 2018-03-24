*Ring2-Core
asRing2MinimalDefinitionIn: anRGEnvironment 

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		| def realClass |
		realClass := Smalltalk allClasses detect: [ :each | each classVariables includes: self ].
		def := RGClassVariable named: self key asSymbol parent: (realClass asRing2MinimalDefinitionIn: anRGEnvironment).
		def ].
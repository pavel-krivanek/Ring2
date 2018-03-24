*Ring2-Core
asRing2MinimalDefinitionIn: aRGEnvironment 

	^ aRGEnvironment backend definitionFor: self ifAbsentRegister: [
		| def realClass |
		realClass := Smalltalk allClasses detect: [ :each | each classVariables includes: self ].
		def := RGClassVariable named: self key asSymbol parent: (realClass asRing2MinimalDefinitionIn: aRGEnvironment).
		def ].
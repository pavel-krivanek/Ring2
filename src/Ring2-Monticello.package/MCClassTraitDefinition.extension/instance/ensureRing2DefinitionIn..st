*Ring2-Monticello
ensureRing2DefinitionIn: aRGEnvironment

	^ aRGEnvironment backend definitionFor: self ifAbsentRegister: [
		| def traitDef |
		def := aRGEnvironment ensureMetaclassTraitNamed: (self baseTrait, ' classTrait') asSymbol.
		traitDef := aRGEnvironment ensureTraitNamed: (self baseTrait) asSymbol.
		def baseTrait: traitDef.
		traitDef classTrait: def.
		def traitComposition: (self traitCompositionFrom: self classTraitComposition parent: def).
		traitDef category: self category. "makes no sense for metaclass trait"
		def]. 
	
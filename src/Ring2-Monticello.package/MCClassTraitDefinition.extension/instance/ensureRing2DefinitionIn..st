*Ring2-Monticello
ensureRing2DefinitionIn: aRG2Environment

	^ aRG2Environment backend definitionFor: self ifAbsentRegister: [
		| def traitDef |
		def := aRG2Environment ensureMetaclassTraitNamed: (self baseTrait, ' classTrait') asSymbol.
		traitDef := aRG2Environment ensureTraitNamed: (self baseTrait) asSymbol.
		def baseTrait: traitDef.
		traitDef classTrait: def.
		def traitComposition: (self traitCompositionFrom: self classTraitComposition parent: def).
		traitDef category: self category. "makes no sense for metaclass trait"
		def]. 
	
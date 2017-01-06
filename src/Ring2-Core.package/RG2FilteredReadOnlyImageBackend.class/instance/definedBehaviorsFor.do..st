environment
definedBehaviorsFor: aRG2PackageDefinition do: aBlock

	| realPackage |
	
	realPackage := self realPackageFor: aRG2PackageDefinition.
	realPackage ifNotNil: [ 
		realPackage definedClassesDo: [:behaviorName |
			| def cls | 
			cls := Smalltalk classOrTraitNamed: behaviorName.
			(self allowedClasses includes: cls) ifTrue: [ 
				def := self definitionFor: cls ifAbsentRegister: [cls asRing2MinimalDefinitionIn: aRG2PackageDefinition environment].
				aBlock value: def.]]].
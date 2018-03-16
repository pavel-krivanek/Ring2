package
definedBehaviorsFor: aRG2Package do: aBlock

	| realPackage |
	
	realPackage := self realPackageFor: aRG2Package.
	realPackage ifNotNil: [ 
		realPackage definedClassesDo: [:behaviorName |
			| def cls | 
			cls := Smalltalk classOrTraitNamed: behaviorName.
			def := self definitionFor: cls ifAbsentRegister: [cls asRing2MinimalDefinitionIn: aRG2Package environment].
			aBlock value: def.]]
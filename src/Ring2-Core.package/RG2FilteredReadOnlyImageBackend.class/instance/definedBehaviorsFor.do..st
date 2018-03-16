environment
definedBehaviorsFor: aRG2Package do: aBlock

	| realPackage |
	
	realPackage := self realPackageFor: aRG2Package.
	realPackage ifNotNil: [ 
		realPackage definedClassesDo: [:behaviorName |
			| def cls | 
			cls := Smalltalk classOrTraitNamed: behaviorName.
			(self allowedClasses includes: cls) ifTrue: [ 
				def := self definitionFor: cls ifAbsentRegister: [cls asRing2MinimalDefinitionIn: aRG2Package environment].
				aBlock value: def.]]].
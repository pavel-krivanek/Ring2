environment
definedBehaviorsFor: anRGPackageDefinition do: aBlock

	| realPackage |
	
	realPackage := self realPackageFor: anRGPackageDefinition.
	realPackage ifNotNil: [ 
		realPackage definedClassesDo: [:behaviorName |
			| def cls | 
			cls := Smalltalk classOrTraitNamed: behaviorName.
			(self allowedClasses includes: cls) ifTrue: [ 
				def := self definitionFor: cls ifAbsentRegister: [cls asRing2MinimalDefinitionIn: anRGPackageDefinition environment].
				aBlock value: def.]]].
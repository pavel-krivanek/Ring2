as yet unclassified
correspondingObjectIn: aRG2Environment

	(self isRing2Resolved not and: ((self hasPropertyNamed: #creator) and: [ self hasPropertyNamed: #role])) ifTrue: [ 
		| creator role base correspondingBase |
		creator := self propertyNamed: #creator.
		creator == self ifFalse: [  
			role := self propertyNamed: #role. 
			base := creator isTrait 
				ifFalse: [ creator isClass ifTrue: [ creator ] ifFalse: [ creator baseClass ]]
				ifTrue: [ creator isMetaclassTrait ifFalse: [ creator ]	ifTrue: [ creator baseTrait ]].
			base == self ifFalse: [ 
				correspondingBase := base correspondingObjectIn: aRG2Environment.
				correspondingBase ifNil: [ ^ nil ].
				(role = #class) ifTrue: [ ^ correspondingBase ].
				(role = #metaclass) ifTrue: [ ^ correspondingBase metaclass ].
				(role = #superclass) ifTrue: [ ^ correspondingBase superclass ].
				(role = #superclassMetaclass) ifTrue: [ ^ correspondingBase superclass metaclass ].
				
				(role = #trait) ifTrue: [ ^ correspondingBase ].
				(role = #classTrait) ifTrue: [ ^ correspondingBase classTrait ].
				(role = #traitMetaclass) ifTrue: [ ^ correspondingBase metaclass ].
				(role = #classTraitMetaclass) ifTrue: [ ^ correspondingBase classTrait metaclass 			]]]].
		

	^ aRG2Environment ask behaviorNamed: self name.  
as yet unclassified
correspondingObjectIn: anRGEnvironment

	(self isRingResolved not and: ((self hasPropertyNamed: #creator) and: [ self hasPropertyNamed: #role])) ifTrue: [ 
		| creator role base correspondingBase correspondingCreator |
		creator := self propertyNamed: #creator.
		creator == self ifFalse: [  
			role := self propertyNamed: #role. 
			base := creator isTrait 
				ifFalse: [ creator isClass ifTrue: [ creator ] ifFalse: [ creator baseClass ]]
				ifTrue: [ creator isMetaclassTrait ifFalse: [ creator ]	ifTrue: [ creator baseTrait ]].
			base == self ifFalse: [ 
				correspondingBase := base correspondingObjectIn: anRGEnvironment.
				correspondingBase ifNil: [ ^ nil ].
				(role = #class) ifTrue: [ ^ correspondingBase ].
				(role = #metaclass) ifTrue: [ ^ correspondingBase metaclass ].
				(role = #superclass) ifTrue: [ ^ correspondingBase superclass ].
				(role = #superclassMetaclass) ifTrue: [ ^ correspondingBase superclass metaclass ].
				
				(role = #trait) ifTrue: [ ^ correspondingBase ].
				(role = #classTrait) ifTrue: [ ^ correspondingBase classTrait ].
				(role = #traitMetaclass) ifTrue: [ ^ correspondingBase metaclass ].
				(role = #classTraitMetaclass) ifTrue: [ ^ correspondingBase classTrait metaclass ]].
			
			"cannot found corresponding base, try corresponding creator"
			correspondingCreator := creator correspondingObjectIn: anRGEnvironment.
			correspondingCreator ifNotNil: [
				self == creator ifTrue: [ ^ correspondingCreator ].
				self metaclass = creator ifTrue: [ ^ correspondingCreator baseClass ].
				"for superclass and superclass metaclass we are not sure which subclass is the right one. Skip next roles."
				self isTrait ifTrue: [ 
					self classTrait = creator ifTrue: [ ^ correspondingCreator baseTrait ] ]
		]]].
		

	^ anRGEnvironment ask behaviorNamed: self name.  
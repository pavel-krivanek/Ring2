accessing - backend
addBehavior: aRGBehavior

	self backend forEnvironment
		addBehavior: aRGBehavior
		to: self.
	aRGBehavior isMeta ifFalse: [
		aRGBehavior package
			ifNotNil: [ :package | 
				self backend forEnvironment addPackage: aRGBehavior package	to: self.
				package addDefinedBehavior: aRGBehavior. ].
		"self backend forEnvironment
					addGlobalVariable: (RGGlobalVariable named: aRGBehavior name parent: self)
					to: self" ].

	(aRGBehavior hasResolvedName)
		ifTrue: [ self queryInterface behaviorsDictionary at: aRGBehavior name asSymbol put: aRGBehavior ].
				

accessing - backend
addBehavior: aRG2Behavior

	self backend forEnvironment
		addBehavior: aRG2Behavior
		to: self.
	aRG2Behavior isMeta ifFalse: [
		aRG2Behavior package
			ifNotNil: [ :package | 
				self backend forEnvironment addPackage: aRG2Behavior package	to: self.
				package addDefinedBehavior: aRG2Behavior. ].
		"self backend forEnvironment
					addGlobalVariable: (RG2GlobalVariable named: aRG2Behavior name parent: self)
					to: self" ].

	(aRG2Behavior hasResolved: #name)
		ifTrue: [ self queryInterface behaviorsDictionary at: aRG2Behavior name asSymbol put: aRG2Behavior ].
				

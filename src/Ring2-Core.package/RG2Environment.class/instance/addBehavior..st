accessing - backend
addBehavior: aRG2BehaviorDefinition

	self backend forEnvironment
		addBehavior: aRG2BehaviorDefinition
		to: self.
	aRG2BehaviorDefinition isMeta ifFalse: [
		aRG2BehaviorDefinition package
			ifNotNil: [ :package | 
				self backend forEnvironment	addPackage: package to: self.
				package addDefinedBehavior: aRG2BehaviorDefinition.].
		"self backend forEnvironment
					addGlobalVariable: (RG2GlobalVariableDefinition named: aRG2BehaviorDefinition name parent: self)
					to: self" ].

	(aRG2BehaviorDefinition hasResolved: #name)
		ifTrue: [ self queryInterface behaviorsDictionary at: aRG2BehaviorDefinition name asSymbol put: aRG2BehaviorDefinition ].
				

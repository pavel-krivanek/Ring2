accessing - backend
addBehavior: aRG2BehaviorDefinition

	self backend forEnvironment
		addBehavior: aRG2BehaviorDefinition
		to: self.
	aRG2BehaviorDefinition isMeta ifFalse: [
		aRG2BehaviorDefinition package
			ifNotNil: [ :package | 
				self backend forEnvironment
					addPackage: aRG2BehaviorDefinition package
					to: self ].
		self backend forEnvironment
					addGlobalVariable: (RG2GlobalVariableDefinition named: aRG2BehaviorDefinition name parent: self)
					to: self ].
				

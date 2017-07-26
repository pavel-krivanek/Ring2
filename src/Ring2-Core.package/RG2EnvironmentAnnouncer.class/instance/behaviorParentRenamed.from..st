triggering
behaviorParentRenamed: aRG2BehaviorDefinition from: oldName

	self announce: (ClassParentRenamed 
		classParentOf: aRG2BehaviorDefinition
		renamedFrom: oldName
		to: aRG2BehaviorDefinition name)
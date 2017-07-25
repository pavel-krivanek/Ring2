triggering
behaviorRenamed: aRG2BehaviorDefinition from: oldName

	self announce: (ClassRenamed 
		class: aRG2BehaviorDefinition 
		category: aRG2BehaviorDefinition category 
		oldName: oldName 
		newName: aRG2BehaviorDefinition name)
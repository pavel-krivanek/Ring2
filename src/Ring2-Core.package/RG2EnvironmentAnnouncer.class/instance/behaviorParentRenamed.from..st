triggering
behaviorParentRenamed: aRG2BehaviorDefinition from: oldName

	self announce: (RG2BehaviorParentRenamed new 
		behavior: aRG2BehaviorDefinition;
		oldName: oldName;
		yourself)
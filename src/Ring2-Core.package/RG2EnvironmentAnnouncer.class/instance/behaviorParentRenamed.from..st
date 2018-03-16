triggering
behaviorParentRenamed: aRG2Behavior from: oldName

	self announce: (ClassParentRenamed 
		classParentOf: aRG2Behavior
		renamedFrom: oldName
		to: aRG2Behavior name)
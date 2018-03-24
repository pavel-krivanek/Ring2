triggering
behaviorParentRenamed: aRGBehavior from: oldName

	self announce: (ClassParentRenamed 
		classParentOf: aRGBehavior
		renamedFrom: oldName
		to: aRGBehavior name)
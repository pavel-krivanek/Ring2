triggering
behaviorRenamed: aRGBehavior from: oldName

	self announce: (ClassRenamed 
		class: aRGBehavior 
		category: aRGBehavior category 
		oldName: oldName 
		newName: aRGBehavior name)
accessing
extendedClasses
	
	^ ((self extensionMethods collect: #parent) select: #isClass) collect: #baseClass
actions
exportAllMczTo: aDirectory
	
	| repository directory | 
	environment announcer suspendAllWhile: [ 
	directory := aDirectory asFileReference ensureCreateDirectory.
	repository := MCDirectoryRepository new directory: directory.
	self packageNames do: [ :packageName | 
		| snap defs package |
		Stdio stdout nextPutAll: packageName asString; lf.
		package := environment ensurePackageNamed: packageName.
		snap := packageName asPackage mcWorkingCopy snapshot.
		defs := snap definitions.
		defs do: [ :each |
			each ensureRingDefinitionIn: environment package: package ].
		
		"repository basicStoreVersion: mcz "] 
	]
	
	
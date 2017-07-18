actions
exportAllMczTo: aDirectory
	
	| repository directory | 
	environment announcer suspendAllWhile: [ 
	directory := aDirectory asFileReference ensureCreateDirectory.
	repository := MCDirectoryRepository new directory: directory.
	self withMczDo: [ :mcz | 
		| snap defs package |
		Stdio stdout nextPutAll: mcz asString; lf.
		package := environment ensurePackageNamed: mcz package name.
		snap := mcz snapshot.
		defs := snap definitions.
		defs do: [ :each |
			each ensureRing2DefinitionIn: environment package: package ].
		
		"repository basicStoreVersion: mcz "] group: group.
	]
	
	
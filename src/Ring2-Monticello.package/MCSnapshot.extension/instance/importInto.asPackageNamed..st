*Ring2-Monticello
importInto: anRGEnvironment asPackageNamed: aPackageName

	| anRGPacakgeDefinition |
	anRGPacakgeDefinition := anRGEnvironment ensurePackageNamed: aPackageName.
	self definitions do: [ :each |
		each ensureRing2DefinitionIn: anRGEnvironment package: anRGPacakgeDefinition ].

	^ anRGPacakgeDefinition
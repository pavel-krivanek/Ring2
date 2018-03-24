*Ring2-Monticello
importInto: aRGEnvironment asPackageNamed: aPackageName

	| aRGPacakgeDefinition |
	aRGPacakgeDefinition := aRGEnvironment ensurePackageNamed: aPackageName.
	self definitions do: [ :each |
		each ensureRing2DefinitionIn: aRGEnvironment package: aRGPacakgeDefinition ].

	^ aRGPacakgeDefinition
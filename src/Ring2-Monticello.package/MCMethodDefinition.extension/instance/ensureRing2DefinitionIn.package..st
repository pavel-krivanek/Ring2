*Ring2-Monticello
ensureRing2DefinitionIn: anRGEnvironment package: anRGPackageDefinition
	
	| def  |
	
	def := self ensureRing2DefinitionIn: anRGEnvironment.
	def package: anRGPackageDefinition.

	^ def

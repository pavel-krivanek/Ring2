*Ring2-Monticello
ensureRing2DefinitionIn: aRGEnvironment package: anRGPackageDefinition
	
	| def  |
	
	def := self ensureRing2DefinitionIn: aRGEnvironment.
	def package: anRGPackageDefinition.

	^ def

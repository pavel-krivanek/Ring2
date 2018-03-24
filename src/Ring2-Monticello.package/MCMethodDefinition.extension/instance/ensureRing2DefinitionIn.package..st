*Ring2-Monticello
ensureRing2DefinitionIn: aRG2Environment package: anRGPackageDefinition
	
	| def  |
	
	def := self ensureRing2DefinitionIn: aRG2Environment.
	def package: anRGPackageDefinition.

	^ def

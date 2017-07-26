*Ring2-Monticello
ensureRing2DefinitionIn: aRG2Environment package: aRG2PackageDefinition
	
	| def  |
	
	def := self ensureRing2DefinitionIn: aRG2Environment.
	def package: aRG2PackageDefinition.

	^ def
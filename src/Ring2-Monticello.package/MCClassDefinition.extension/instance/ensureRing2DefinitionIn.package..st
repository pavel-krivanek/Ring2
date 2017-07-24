*Ring2-Monticello
ensureRing2DefinitionIn: aRG2Environment package: aRG2PackageDefinition
	
	| def |
	
	def := self ensureRing2DefinitionIn: aRG2Environment.
	def package: aRG2PackageDefinition.
	def category: def tags first. "fix tags to do not contain package names"
	^ def
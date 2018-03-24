*Ring2-Monticello
ensureRing2DefinitionIn: anRGEnvironment package: anRGPackageDefinition
	
	| def |
	
	def := self ensureRing2DefinitionIn: anRGEnvironment.
	def package: anRGPackageDefinition.
	def category: def tags first. "fix tags to do not contain package names"
	^ def
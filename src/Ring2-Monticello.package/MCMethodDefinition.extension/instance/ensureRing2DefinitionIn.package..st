*Ring2-Monticello
ensureRing2DefinitionIn: aRG2Environment package: aRG2Package
	
	| def  |
	
	def := self ensureRing2DefinitionIn: aRG2Environment.
	def package: aRG2Package.

	^ def

*Ring2-Monticello
ensureRing2DefinitionIn: aRG2Environment package: aRG2PackageDefinition
	
	| def  |
	
	"TODO: fix in for bootstrap"
	
	def := self ensureRing2DefinitionIn: aRG2Environment.
	"(def category beginsWith: '*') 
		ifTrue: [ 
			aRG2PackageDefinition addExtensionMethod: def. ]."
	 def package: aRG2PackageDefinition.

	^ def
*Ring2-Core
asRing2Definition

	| model env |
	
	model := (RG2TraitDefinition named: self name).
	env := model environment.
	model 	superclass: (env ensureClassNamed: #Trait).
		
	self tags do: [ :aTag | model tagWith: aTag ].
	
	"TODO"

	^ model
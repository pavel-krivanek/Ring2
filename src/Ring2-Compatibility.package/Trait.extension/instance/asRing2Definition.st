*Ring2-Compatibility
asRing2Definition

	| model env |
	
	model := (RG2Trait named: self name).
	env := model environment.
	model 	superclass: (env ensureClassNamed: #Trait).
		
	self tags do: [ :aTag | model tagWith: aTag ].
	
	"TODO"

	^ model
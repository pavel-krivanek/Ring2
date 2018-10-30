Extension { #name : #Trait }

{ #category : #'*Ring2-Compatibility' }
Trait >> asRGDefinition [

	| model env |
	
	model := (RGTrait named: self name).
	env := model environment.
	model 	superclass: (env ensureClassNamed: #Trait).
		
	self tags do: [ :aTag | model tagWith: aTag ].
	
	"TODO"

	^ model
]

{ #category : #'*Ring2-Compatibility' }
Trait >> asRingDefinitionIn: anRGEnvironment [

	^ RGTrait named: self name parent: anRGEnvironment.

]

Extension { #name : #RG2Environment }

{ #category : #'*Ring2-RuntimeSupport' }
RG2Environment >> addGlobalsNamed: anArrayOfSymbols [

	anArrayOfSymbols do: [ :each |
		self addGlobalVariable: (RG2GlobalVariableDefinition named: each parent: self)].
]

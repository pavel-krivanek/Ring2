parsing
parse: anExpressionString for: aRGTraitCompositionDefinition

	| ast result |
	ast := (RBParser parseExpression: anExpressionString).
	self traitComposition: aRGTraitCompositionDefinition.
	result := ast acceptVisitor: self.
	
	result isCollection 
		ifFalse: [ result := OrderedCollection with: result. ].
		
	^ result.
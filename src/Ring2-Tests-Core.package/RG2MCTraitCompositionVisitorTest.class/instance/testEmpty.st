tests
testEmpty

	| composition result |

	composition := RG2TraitCompositionDefinition unnamed.
	result := RG2TraitCompositionVisitor new parse: '' for: composition.
	
	self assert: result isCollection.
	self assert: result isEmpty.
	
	composition := RG2TraitCompositionDefinition unnamed.
	result := RG2TraitCompositionVisitor new parse: '{}' for: composition.
	
	self assert: result isCollection.
	self assert: result isEmpty.
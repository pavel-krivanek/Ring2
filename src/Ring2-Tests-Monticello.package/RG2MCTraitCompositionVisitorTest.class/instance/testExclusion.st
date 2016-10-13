tests
testExclusion

	| composition result |

	composition := RG2TraitCompositionDefinition unnamed.
	result := RG2TraitCompositionVisitor new parse: 'Trait2 - {#c}' for: composition.
	
	self assert: result isCollection.
	self assert: (result allSatisfy: #isTraitExclusion).
	self assert: (result allSatisfy: #isRing2Object).
	self assert: result size equals: 1.
	self assert: result first subject isTrait.	
	self assert: result first subject name = #Trait2.
	self assert: result first exclusions isCollection.
	self assert: result first exclusions asArray equals: #(#c).
	
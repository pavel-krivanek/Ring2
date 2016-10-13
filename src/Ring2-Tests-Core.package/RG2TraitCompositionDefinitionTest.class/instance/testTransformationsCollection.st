tests
testTransformationsCollection
	
	| traitComposition env transformation1 transformation2 transformation3 |

	traitComposition := RG2TraitCompositionDefinition unnamed.
	env := traitComposition environment.

	self assert: traitComposition transformations isEmpty.
	self assert: (traitComposition unresolvedProperties includes: #transformations).
	
	transformation1 := RG2TraitCompositionDefinition parent: env.
	env addBehavior: transformation1.
	traitComposition addTransformation: transformation1.
	self assert: traitComposition transformations size equals: 1.

	self assert: (traitComposition resolvedProperties includes: #transformations).
	
	transformation2 := RG2TraitAliasDefinition parent: traitComposition.
	traitComposition addTransformation: transformation2.
	self assert: traitComposition transformations size equals: 2.
	
	transformation3 := RG2TraitExclusionDefinition parent: traitComposition.
	traitComposition addTransformation: transformation3.
	self assert: traitComposition transformations size equals: 3.

	traitComposition removeTransformation: transformation3.
	self assert: traitComposition transformations size equals: 2.

	traitComposition cleanTransformations.
	self assert: traitComposition transformations isEmpty.
	self assert: (traitComposition resolvedProperties includes: #transformations).

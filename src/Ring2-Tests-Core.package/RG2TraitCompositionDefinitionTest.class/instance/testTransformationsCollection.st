tests
testTransformationsCollection
	
	| traitComposition env transformation1 transformation2 transformation3 |

	traitComposition := RG2TraitComposition unnamed.
	env := traitComposition environment.

	self assert: traitComposition transformations isEmpty.
	self assert: (traitComposition hasUnresolved: #transformations).
	
	transformation1 := RG2TraitComposition parent: env.
	env addBehavior: transformation1.
	traitComposition addTransformation: transformation1.
	self assert: traitComposition transformations size equals: 1.

	self assert: (traitComposition hasResolved: #transformations).
	
	transformation2 := RG2TraitAlias parent: traitComposition.
	traitComposition addTransformation: transformation2.
	self assert: traitComposition transformations size equals: 2.
	
	transformation3 := RG2TraitExclusion parent: traitComposition.
	traitComposition addTransformation: transformation3.
	self assert: traitComposition transformations size equals: 3.

	traitComposition removeTransformation: transformation3.
	self assert: traitComposition transformations size equals: 2.

	traitComposition cleanTransformations.
	self assert: traitComposition transformations isEmpty.
	self assert: (traitComposition hasResolved: #transformations).

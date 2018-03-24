tests
testConversionToTrait

	| env behavior trait | 
	
	"TODO: more complete test"
	
	env := RG2Environment new.
	behavior := env ensureClassNamed: #SomeTrait.
	self deny: behavior isTrait.
	self assert: behavior isClass.
	
	trait := env ensureTraitNamed: #SomeTrait.
	self deny: behavior isClass.
	self assert: behavior isTrait.
	
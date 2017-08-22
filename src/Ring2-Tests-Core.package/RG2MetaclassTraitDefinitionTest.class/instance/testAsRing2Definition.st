tests
testAsRing2Definition

	| classTrait env |
	
	classTrait := RG2TestTrait classTrait asRing2Definition.
	
	self assert: classTrait baseTrait name equals: 'RG2TestTrait'.
		
	"TODO"

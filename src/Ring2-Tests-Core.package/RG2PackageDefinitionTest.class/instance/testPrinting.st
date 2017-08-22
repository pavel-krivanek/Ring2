tests - new
testPrinting
	| newPackage |
	
	newPackage := RG2PackageDefinition named: 'Collections-Sequenceable'.
	
	self assert: newPackage printString equals: ('RG2PackageDefinition(Collections-Sequenceable)').
	
tests - new
testPrinting
	| newPackage |
	
	newPackage := RG2Package named: 'Collections-Sequenceable'.
	
	self assert: newPackage printString equals: ('RG2Package(Collections-Sequenceable)').
	
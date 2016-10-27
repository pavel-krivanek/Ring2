tests
testReferencedPackages

	| env | 
	
	env := RG2Environment new.
	"
	self assert: env referencedPackages isEmpty."
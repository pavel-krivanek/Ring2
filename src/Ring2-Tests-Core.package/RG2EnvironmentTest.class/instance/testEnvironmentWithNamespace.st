tests
testEnvironmentWithNamespace

	| newEnvironment newPackage|
	
	newEnvironment := RG2Environment named: 'Testing environment'.
	
	self assert: (newEnvironment isRing2Resolved).
	
	newPackage := RG2PackageDefinition named: 'Collections-Sequenceable'.
	
	self assert: (newPackage isRing2Resolved).
	self deny: (newPackage isRing2FullyResolved).
	newPackage cleanDefinedBehaviors.
	newPackage cleanExtensionMethods.
	self assert: (newPackage isRing2Resolved).
	self assert: (newPackage isRing2FullyResolved).
	
	self should: [newEnvironment addPackage: newPackage] raise: AssertionFailure.
tests
testEnvironmentWithNamespace

	| newEnvironment newPackage|
	
	newEnvironment := RGEnvironment named: 'Testing environment'.
	
	self assert: (newEnvironment isRing2Resolved).
	
	newPackage := RGPackageDefinition named: 'Collections-Sequenceable'.
	
	self assert: (newPackage isRing2Resolved).
	self deny: (newPackage isRing2FullyResolved).
	self deny: (newPackage isRing2FullyUnresolved).
	newPackage cleanDefinedBehaviors.
	newPackage cleanExtensionMethods.
	newPackage cleanTagsForClasses.
	self assert: (newPackage isRing2Resolved).
	self assert: (newPackage isRing2FullyResolved).
	self deny: (newPackage isRing2FullyUnresolved).
	
	self should: [newEnvironment addPackage: newPackage] raise: RGWrongEnvironment.
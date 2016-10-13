tests - new
testNewPackage
	| newPackage |
	
	newPackage := RG2PackageDefinition named: 'Collections-Sequenceable'.
	
	self assert: (newPackage isRing2Resolved).
	
	self assert: (newPackage isPackage).
	self assert: (newPackage name = 'Collections-Sequenceable').
	self assert: (newPackage definedBehaviors isEmpty).
	self assert: (newPackage extensionMethods isEmpty).
	self assert: (newPackage unresolvedProperties includesAll: #(#definedBehaviors #extensionMethods)).
	
	newPackage cleanDefinedBehaviors.
	
	self assert: (newPackage unresolvedProperties includesAll: #(#extensionMethods)).
	self assert: (newPackage definedBehaviors isEmpty).
	self assert: (newPackage extensionMethods isEmpty).

	newPackage cleanExtensionMethods.

	self assert: (newPackage unresolvedProperties isEmpty).
	self assert: (newPackage definedBehaviors isEmpty).
	self assert: (newPackage extensionMethods isEmpty).
	
	self assert: (newPackage isRing2Resolved).
	self assert: (newPackage isRing2FullyResolved).
		

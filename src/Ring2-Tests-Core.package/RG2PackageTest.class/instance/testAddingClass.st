testing
testAddingClass

	| newPackage newClass env |
	
	newPackage := RGPackageDefinition named: 'Collections-Sequenceable'.
	env := newPackage environment.
	newClass:= RG2Class named: #OrderedCollection parent: env.
	
	self assert: (env ask packages notEmpty).
	
	newPackage addDefinedBehavior: newClass.

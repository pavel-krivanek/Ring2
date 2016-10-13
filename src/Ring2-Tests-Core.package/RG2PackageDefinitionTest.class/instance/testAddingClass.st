testing
testAddingClass

	| newPackage newClass env |
	
	newPackage := RG2PackageDefinition named: 'Collections-Sequenceable'.
	env := newPackage environment.
	newClass:= RG2ClassDefinition named: #OrderedCollection parent: env.
	
	self assert: (env ask packages notEmpty).
	
	newPackage addDefinedBehavior: newClass.

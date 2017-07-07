accessing - backend
package: aRG2Package

	self announceDefinitionChangeDuring: [ 
		self backend forBehavior setTraitPackageFor: self to: aRG2Package.
		self environment addPackage: aRG2Package.
		aRG2Package addDefinedBehavior: self. ].
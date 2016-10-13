accessing - backend
package: aRG2Package

	self backend forBehavior setPackageFor: self to: aRG2Package.
	self environment addPackage: aRG2Package.
	
	self announcer behaviorDefinitionModified: self.

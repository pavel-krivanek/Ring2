DONE
package: aRG2Package

	| oldPackage |
	oldPackage := self package.

	self announceDefinitionChangeDuring: [ 
		self backend forBehavior setPackageFor: self to: aRG2Package.
		self environment addPackage: aRG2Package.
		oldPackage removeDefinedBehavior: self.
		aRG2Package addDefinedBehavior: self. ].
	
	self announce: (ClassRepackaged 
		classRepackaged: self
		oldPackage: oldPackage
		newPackage: aRG2Package)
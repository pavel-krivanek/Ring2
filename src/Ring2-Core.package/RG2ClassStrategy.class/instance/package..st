accessing - backend
package: aRG2Package

	| oldPackage |
	oldPackage := self package.

	self owner announceDefinitionChangeDuring: [ 
		self owner backend forBehavior setPackageFor: self owner to: aRG2Package.
		self owner environment addPackage: aRG2Package.
		oldPackage removeDefinedBehavior: self owner.
		aRG2Package addDefinedBehavior: self owner. ].
	
	self owner announce: (ClassRepackaged 
		classRepackaged: self owner
		oldPackage: oldPackage
		newPackage: aRG2Package)
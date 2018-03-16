accessing - backend
package: aRG2Package

	self backend forMethod setMethodPackageFor: self to: aRG2Package.
	self environment addPackage: aRG2Package.
	(self parent package = aRG2Package)
		ifFalse: [ self package addExtensionMethod: self ].

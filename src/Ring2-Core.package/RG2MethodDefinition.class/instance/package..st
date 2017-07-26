accessing - backend
package: aRG2PackageDefinition

	self backend forMethod setMethodPackageFor: self to: aRG2PackageDefinition.
	self environment addPackage: aRG2PackageDefinition.
	(self package = aRG2PackageDefinition)
		ifFalse: [ self package addExtensionMethod: self ].

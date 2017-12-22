accessing - backend
package: aRG2PackageDefinition

	| oldPackage |
	
	oldPackage := self package.
	self backend forMethod setMethodPackageFor: self to: aRG2PackageDefinition.
	self environment addPackage: aRG2PackageDefinition.
	(self parent package = aRG2PackageDefinition)
		ifFalse: [ 
			oldPackage isRing2Resolved 
				ifTrue: [ oldPackage removeExtensionMethod: self ].
			self package addExtensionMethod: self ].

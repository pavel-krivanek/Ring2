unpackaged 
ensureUnpackagedPackage

	^ self unpackagedPackageOrNil
		ifNotNil: [ :found | found ]
		ifNil: [ | newPackage |
			newPackage := RG2PackageDefinition unresolvedWithParent: self.
			newPackage pvtName: self unpackagedPackageName.
			self pvtAddPackage: newPackage.
			^ newPackage ]
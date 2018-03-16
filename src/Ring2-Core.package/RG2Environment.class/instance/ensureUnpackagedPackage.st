unpackaged 
ensureUnpackagedPackage

	^ self unpackagedPackageOrNil
		ifNotNil: [ :found | found ]
		ifNil: [ | newPackage |
			newPackage := RG2Package unresolvedWithParent: self.
			newPackage pvtName: self unpackagedPackageName.
			self pvtAddPackage: newPackage.
			^ newPackage ]
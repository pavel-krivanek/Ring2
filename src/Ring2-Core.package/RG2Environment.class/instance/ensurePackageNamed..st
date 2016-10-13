as yet unclassified
ensurePackageNamed: aSymbol

	^ self ask packages 
		detect: [:each | each name = aSymbol] 
		ifNone: [ | newPackage |
				newPackage := RG2PackageDefinition named: aSymbol parent: self.
				self addBehavior: newPackage.
				newPackage ].
			

as yet unclassified
ensurePackageNamed: aSymbol

	^ self ask packages 
		detect: [:each | each name = aSymbol] 
		ifNone: [ | newPackage |
				newPackage := RG2Package named: aSymbol parent: self.
				self addPackage: newPackage.
				newPackage ].
			

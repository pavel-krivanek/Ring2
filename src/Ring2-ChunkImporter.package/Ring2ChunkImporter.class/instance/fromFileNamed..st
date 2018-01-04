reading
fromFileNamed: aName
	
	package := RG2PackageDefinition named: aName.
	self fileInFrom: aName asFileReference readStream.
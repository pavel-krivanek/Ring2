unresolved objects
createNewUnresolvedClass

	| classStub metaclassStub packageStub |
	
	classStub := RG2ClassDefinition unresolvedWithParent: self environment.
	packageStub := RG2PackageDefinition unresolvedWithParent: self environment.
	classStub pvtPackage: packageStub.
	packageStub pvtAddDefinedBehavior: classStub.
	metaclassStub := self createNewUnresolvedMetaclassFor: classStub.

	classStub pvtSuperclass: classStub.
	classStub pvtMetaclass: metaclassStub.
	classStub pvtPackage: packageStub.
	packageStub pvtAddDefinedBehavior: classStub.
	self environment pvtAddBehavior: classStub.
	self environment pvtAddPackage: packageStub.

	^ classStub
	


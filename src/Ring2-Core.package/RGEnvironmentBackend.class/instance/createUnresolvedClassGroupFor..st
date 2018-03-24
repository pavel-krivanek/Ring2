unresolved objects
createUnresolvedClassGroupFor: aRGBehavior 

	| classStub metaclassStub superclassStub superclassMetaclassStub packageStub1 packageStub2 |

	classStub := aRGBehavior isMeta
		ifFalse: [ aRGBehavior ]
		ifTrue: [ RGClass unresolvedWithParent: self environment ].
	classStub propertyNamed: #creator put: aRGBehavior.
	classStub propertyNamed: #role put: #class.
		
	metaclassStub := aRGBehavior isMeta
		ifFalse: [ RGMetaclass unresolvedWithParent: self environment ]
		ifTrue: [ aRGBehavior ].
	metaclassStub propertyNamed: #creator put: aRGBehavior.
	metaclassStub propertyNamed: #role put: #metaclass.

	superclassStub := RGClass unresolvedWithParent: self environment.
	superclassStub propertyNamed: #creator put: aRGBehavior.
	superclassStub propertyNamed: #role put: #superclass.

	superclassMetaclassStub := RGMetaclass unresolvedWithParent: self environment.
	superclassMetaclassStub propertyNamed: #creator put: aRGBehavior.
	superclassMetaclassStub propertyNamed: #role put: #superclassMetaclass.
	
	packageStub1 := RGPackageDefinition unresolvedWithParent: self environment.
	classStub behaviorStrategy pvtPackage: packageStub1.
	self environment pvtAddPackage: packageStub1.
	packageStub1 pvtAddDefinedBehavior: classStub.
	packageStub1 propertyNamed: #creator put: aRGBehavior.
	packageStub1 propertyNamed: #role put: #package.
	
	packageStub2 := RGPackageDefinition unresolvedWithParent: self environment.
	superclassStub behaviorStrategy pvtPackage: packageStub2.
	self environment pvtAddPackage: packageStub2.
	packageStub2 pvtAddDefinedBehavior: superclassStub.
	packageStub2 propertyNamed: #creator put: aRGBehavior.
	packageStub2 propertyNamed: #role put: #superclassPackage.

	classStub pvtSuperclass: superclassStub.
	classStub pvtMetaclass: metaclassStub.
	
	superclassStub pvtSuperclass: superclassStub.
	superclassStub pvtMetaclass: superclassMetaclassStub.
	
	metaclassStub pvtSuperclass: superclassMetaclassStub.
	metaclassStub pvtMetaclass: superclassMetaclassStub.
	metaclassStub behaviorStrategy pvtBaseClass: classStub.
	
	superclassMetaclassStub pvtSuperclass: superclassMetaclassStub.
	superclassMetaclassStub pvtMetaclass: superclassMetaclassStub.
	superclassMetaclassStub behaviorStrategy pvtBaseClass: superclassStub.
	
	self environment pvtAddBehavior: classStub.
	self environment pvtAddBehavior: metaclassStub. 	
	self environment pvtAddBehavior: superclassStub.
	self environment pvtAddBehavior: superclassMetaclassStub.
	

	^ 	aRGBehavior isMeta
		ifFalse: [ metaclassStub ]
		ifTrue: [ classStub ].

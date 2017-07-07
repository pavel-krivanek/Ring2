unresolved objects
createUnresolvedClassGroupFor: aRG2BehaviorDefinition 

	| classStub metaclassStub superclassStub superclassMetaclassStub packageStub1 packageStub2 |

	classStub := aRG2BehaviorDefinition isMeta
		ifFalse: [ aRG2BehaviorDefinition ]
		ifTrue: [ RG2ClassDefinition unresolvedWithParent: self environment ].
	classStub propertyNamed: #creator put: aRG2BehaviorDefinition.
	classStub propertyNamed: #role put: #class.
		
	metaclassStub := aRG2BehaviorDefinition isMeta
		ifFalse: [ RG2MetaclassDefinition unresolvedWithParent: self environment ]
		ifTrue: [ aRG2BehaviorDefinition ].
	metaclassStub propertyNamed: #creator put: aRG2BehaviorDefinition.
	metaclassStub propertyNamed: #role put: #metaclass.

	superclassStub := RG2ClassDefinition unresolvedWithParent: self environment.
	superclassStub propertyNamed: #creator put: aRG2BehaviorDefinition.
	superclassStub propertyNamed: #role put: #superclass.

	superclassMetaclassStub := RG2MetaclassDefinition unresolvedWithParent: self environment.
	superclassMetaclassStub propertyNamed: #creator put: aRG2BehaviorDefinition.
	superclassMetaclassStub propertyNamed: #role put: #superclassMetaclass.
	
	packageStub1 := RG2PackageDefinition unresolvedWithParent: self environment.
	classStub pvtPackage: packageStub1.
	self environment pvtAddPackage: packageStub1.
	packageStub1 propertyNamed: #creator put: aRG2BehaviorDefinition.
	packageStub1 propertyNamed: #role put: #package.
	packageStub1 pvtAddDefinedBehavior: classStub.
	
	packageStub2 := RG2PackageDefinition unresolvedWithParent: self environment.
	superclassStub pvtPackage: packageStub2.
	self environment pvtAddPackage: packageStub2.
	packageStub2 propertyNamed: #creator put: aRG2BehaviorDefinition.
	packageStub2 propertyNamed: #role put: #superclassPackage.
	packageStub2 pvtAddDefinedBehavior: superclassStub.

	classStub pvtSuperclass: superclassStub.
	classStub pvtMetaclass: metaclassStub.
	
	superclassStub pvtSuperclass: superclassStub.
	superclassStub pvtMetaclass: superclassMetaclassStub.
	
	metaclassStub pvtSuperclass: superclassMetaclassStub.
	metaclassStub pvtMetaclass: superclassMetaclassStub.
	metaclassStub pvtBaseClass: classStub.
	
	superclassMetaclassStub pvtSuperclass: superclassMetaclassStub.
	superclassMetaclassStub pvtMetaclass: superclassMetaclassStub.
	superclassMetaclassStub pvtBaseClass: superclassStub.
	
	self environment pvtAddBehavior: classStub.
	self environment pvtAddBehavior: metaclassStub. 	
	self environment pvtAddBehavior: superclassStub.
	self environment pvtAddBehavior: superclassMetaclassStub.
	

	^ 	aRG2BehaviorDefinition isMeta
		ifFalse: [ metaclassStub ]
		ifTrue: [ classStub ].

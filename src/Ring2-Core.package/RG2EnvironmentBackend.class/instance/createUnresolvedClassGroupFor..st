unresolved objects
createUnresolvedClassGroupFor: aRG2Behavior 

	| classStub metaclassStub superclassStub superclassMetaclassStub packageStub1 packageStub2 |

	classStub := aRG2Behavior isMeta
		ifFalse: [ aRG2Behavior ]
		ifTrue: [ RG2Class unresolvedWithParent: self environment ].
	classStub propertyNamed: #creator put: aRG2Behavior.
	classStub propertyNamed: #role put: #class.
		
	metaclassStub := aRG2Behavior isMeta
		ifFalse: [ RG2Metaclass unresolvedWithParent: self environment ]
		ifTrue: [ aRG2Behavior ].
	metaclassStub propertyNamed: #creator put: aRG2Behavior.
	metaclassStub propertyNamed: #role put: #metaclass.

	superclassStub := RG2Class unresolvedWithParent: self environment.
	superclassStub propertyNamed: #creator put: aRG2Behavior.
	superclassStub propertyNamed: #role put: #superclass.

	superclassMetaclassStub := RG2Metaclass unresolvedWithParent: self environment.
	superclassMetaclassStub propertyNamed: #creator put: aRG2Behavior.
	superclassMetaclassStub propertyNamed: #role put: #superclassMetaclass.
	
	packageStub1 := RG2Package unresolvedWithParent: self environment.
	classStub behaviorStrategy pvtPackage: packageStub1.
	self environment pvtAddPackage: packageStub1.
	packageStub1 pvtAddDefinedBehavior: classStub.
	packageStub1 propertyNamed: #creator put: aRG2Behavior.
	packageStub1 propertyNamed: #role put: #package.
	
	packageStub2 := RG2Package unresolvedWithParent: self environment.
	superclassStub behaviorStrategy pvtPackage: packageStub2.
	self environment pvtAddPackage: packageStub2.
	packageStub2 pvtAddDefinedBehavior: superclassStub.
	packageStub2 propertyNamed: #creator put: aRG2Behavior.
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
	

	^ 	aRG2Behavior isMeta
		ifFalse: [ metaclassStub ]
		ifTrue: [ classStub ].

as yet unclassified
createDefaultEnvironment

	| protoobject protoobjectClass object objectClass class classClass classDescription classDescriptionClass behavior behaviorClass metaclass metaclassClass kernelPackage |
	
	protoobject := RG2ClassDefinition unresolvedNamed: #'ProtoObject' withParent: self.
	protoobjectClass := RG2MetaclassDefinition unresolvedNamed: #'ProtoObject class' withParent: self.
	object := RG2ClassDefinition unresolvedNamed: #'Object' withParent: self.
	objectClass := RG2MetaclassDefinition unresolvedNamed: #'Object class' withParent: self.
	class := RG2ClassDefinition unresolvedNamed: #'Class' withParent: self.
	classClass := RG2MetaclassDefinition unresolvedNamed: #'Class class' withParent: self.
	classDescription := RG2ClassDefinition unresolvedNamed: #'ClassDescription' withParent: self.
	classDescriptionClass := RG2MetaclassDefinition unresolvedNamed: #'ClassDescription class' withParent: self.
	behavior := RG2ClassDefinition unresolvedNamed: #'Behavior' withParent: self.
	behaviorClass := RG2MetaclassDefinition unresolvedNamed: #'Behavior class' withParent: self.
	metaclass := RG2ClassDefinition unresolvedNamed: #'Metaclass' withParent: self.
	metaclassClass := RG2MetaclassDefinition unresolvedNamed: #'Metaclass class' withParent: self.
	kernelPackage := RG2PackageDefinition unresolvedNamed: #'Kernel' withParent: self.
	
	{ protoobject. protoobjectClass. object. objectClass. class. classClass. classDescription. classDescriptionClass. behavior. behaviorClass. metaclass. metaclassClass } do: [ :each |
		kernelPackage pvtAddDefinedBehavior: each.
		self pvtAddBehavior: each.].
	self pvtAddPackage: kernelPackage.
	
	protoobject pvtSuperclass: protoobject.
	protoobject pvtMetaclass: protoobjectClass.
	protoobject pvtPackage: kernelPackage.

	protoobjectClass pvtSuperclass: class.
	protoobjectClass pvtMetaclass: metaclass.

	object pvtSuperclass: protoobject.
	object pvtMetaclass: objectClass.
	object pvtPackage: kernelPackage.

	objectClass pvtSuperclass: protoobjectClass.
	objectClass pvtMetaclass: metaclass.

	class pvtSuperclass: classDescription.
	class pvtMetaclass: classClass.
	class pvtPackage: kernelPackage.

	classClass pvtSuperclass: classDescriptionClass.
	classClass pvtMetaclass: metaclass.

	classDescription pvtSuperclass: behavior.
	classDescription pvtMetaclass: classDescriptionClass.
	classDescription pvtPackage: kernelPackage.

	classDescriptionClass pvtSuperclass: behaviorClass.
	classDescriptionClass pvtMetaclass: metaclass.

	behavior pvtSuperclass: object.
	behavior pvtMetaclass: behaviorClass.
	behavior pvtPackage: kernelPackage.

	behaviorClass pvtSuperclass: objectClass.
	behaviorClass pvtMetaclass: metaclass.

	metaclass pvtSuperclass: classDescription.
	metaclass pvtMetaclass: metaclassClass.
	metaclass pvtPackage: kernelPackage.

	metaclassClass pvtSuperclass: classDescriptionClass.
	metaclassClass pvtMetaclass: metaclass.


		
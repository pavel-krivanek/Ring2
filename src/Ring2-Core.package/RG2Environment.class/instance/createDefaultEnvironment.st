as yet unclassified
createDefaultEnvironment

	| protoobject protoobjectClass object objectClass class classClass classDescription classDescriptionClass behavior behaviorClass metaclass metaclassClass kernelPackage |
	
	protoobject := RG2Class unresolvedNamed: #'ProtoObject' withParent: self.
	protoobjectClass := RG2MetaclassOld unresolvedNamed: #'ProtoObject class' withParent: self.
	object := RG2Class unresolvedNamed: #'Object' withParent: self.
	objectClass := RG2MetaclassOld unresolvedNamed: #'Object class' withParent: self.
	class := RG2Class unresolvedNamed: #'Class' withParent: self.
	classClass := RG2MetaclassOld unresolvedNamed: #'Class class' withParent: self.
	classDescription := RG2Class unresolvedNamed: #'ClassDescription' withParent: self.
	classDescriptionClass := RG2MetaclassOld unresolvedNamed: #'ClassDescription class' withParent: self.
	behavior := RG2Class unresolvedNamed: #'Behavior' withParent: self.
	behaviorClass := RG2Metaclass unresolvedNamed: #'Behavior class' withParent: self.
	metaclass := RG2Class unresolvedNamed: #'Metaclass' withParent: self.
	metaclassClass := RG2Metaclass unresolvedNamed: #'Metaclass class' withParent: self.
	kernelPackage := RG2Package unresolvedNamed: #'Kernel' withParent: self.
	
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


		
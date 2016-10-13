unresolved objects
createNewUnresolvedMetaclassFor: aRG2BehaviorDefinition

	| metaclassStub superclassMetaclass |
	
	metaclassStub := RG2MetaclassDefinition unresolvedWithParent: self environment.

	superclassMetaclass := aRG2BehaviorDefinition pvtSuperclass pvtMetaclass.
	superclassMetaclass 
		ifNotNil: [ 
			metaclassStub pvtSuperclass: superclassMetaclass.
			metaclassStub pvtMetaclass: superclassMetaclass ]
		ifNil: [ 
			metaclassStub pvtSuperclass: metaclassStub.
			metaclassStub pvtMetaclass: metaclassStub ].
	self environment pvtAddBehavior: metaclassStub.

	^ metaclassStub	

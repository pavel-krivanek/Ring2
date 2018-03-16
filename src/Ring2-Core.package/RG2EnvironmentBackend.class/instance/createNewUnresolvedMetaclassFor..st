unresolved objects
createNewUnresolvedMetaclassFor: aRG2Behavior

	| metaclassStub superclassMetaclass |
	
	metaclassStub := RG2MetaclassOld unresolvedWithParent: self environment.

	superclassMetaclass := aRG2Behavior pvtSuperclass pvtMetaclass.
	superclassMetaclass 
		ifNotNil: [ 
			metaclassStub pvtSuperclass: superclassMetaclass.
			metaclassStub pvtMetaclass: superclassMetaclass ]
		ifNil: [ 
			metaclassStub pvtSuperclass: metaclassStub.
			metaclassStub pvtMetaclass: metaclassStub ].
	self environment pvtAddBehavior: metaclassStub.

	^ metaclassStub	

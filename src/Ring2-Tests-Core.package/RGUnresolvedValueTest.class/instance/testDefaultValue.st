tests
testDefaultValue

	| unresolved | 
	
	unresolved := RGUnresolvedValue new.
	self deny: unresolved isRing2Resolved.
	self deny: unresolved isRing2FullyResolved.
	self assert: unresolved isRing2FullyUnresolved.
	self assert: unresolved value isNil.
	self assert: unresolved value isRing2Resolved.
	
	unresolved := RGUnresolvedValue new default: #someObject.
	self deny: unresolved isRing2Resolved.
	self assert: unresolved value equals: #someObject.
	self assert: unresolved value isRing2Resolved.
	
	unresolved := RGUnresolvedValue new default: #someObject.
	self deny: unresolved isRing2Resolved.
	self assert: unresolved value equals: #someObject.
	self assert: unresolved value isRing2Resolved.

	unresolved := RGUnresolvedValue recursive.
	self deny: unresolved isRing2Resolved.
	self deny: unresolved value isRing2Resolved.

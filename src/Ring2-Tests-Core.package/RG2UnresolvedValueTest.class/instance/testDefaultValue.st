tests
testDefaultValue

	| unresolved | 
	
	unresolved := RG2UnresolvedValue new.
	self deny: unresolved isRing2Resolved.
	self assert: unresolved value isNil.
	self assert: unresolved value isRing2Resolved.
	
	unresolved := RG2UnresolvedValue new default: #someObject.
	self deny: unresolved isRing2Resolved.
	self assert: unresolved value equals: #someObject.
	self assert: unresolved value isRing2Resolved.
	
	unresolved := RG2UnresolvedValue new default: #someObject.
	self deny: unresolved isRing2Resolved.
	self assert: unresolved value equals: #someObject.
	self assert: unresolved value isRing2Resolved.

	unresolved := RG2UnresolvedValue recursive.
	self deny: unresolved isRing2Resolved.
	self deny: unresolved value isRing2Resolved.

private
pvtSafeSourceCode

	| aStringOrUnresolved |
	aStringOrUnresolved := self pvtSourceCode. 
	^ aStringOrUnresolved isRing2Resolved
		ifFalse: [ 
			self pvtName isRing2Resolved 
				ifTrue: [ self sourceCodeForNoSource ]
				ifFalse: [ self sourceCodeForNoSelector ] ]
		ifTrue: [ aStringOrUnresolved value ]
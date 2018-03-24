*Calypso-Ring2
classTags

	self isRingResolved not ifTrue: [ ^ '' ].
	
	 ^ self classes collect: [:aClass | (aClass category ifNil: [ '' ]) withoutPrefix: (self name, '-')] as: Set
compiling
compile: aSourceCode classified: aProtocolName

	| newMethod selector originalMethod |
	newMethod := RG2MethodDefinition parent: self.
	self addLocalMethod: newMethod.
	newMethod sourceCode: aSourceCode.
	selector := newMethod ast selector.
	originalMethod := self localMethodNamed: selector ifAbsent: [ nil ].
	originalMethod ifNotNil: [ 
		self removeLocalMethod: originalMethod].
	newMethod name: newMethod ast selector.
	newMethod tagWith: aProtocolName.
	
	^ newMethod

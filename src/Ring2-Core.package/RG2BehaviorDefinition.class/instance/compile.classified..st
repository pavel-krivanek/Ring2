compiling
compile: aSourceCode classified: aProtocolName

	| newMethod |
	newMethod := RG2MethodDefinition parent: self.
	self addLocalMethod: newMethod.
	newMethod sourceCode: aSourceCode.
	newMethod name: newMethod ast selector.
	newMethod tagWith: aProtocolName.
	
	^ newMethod

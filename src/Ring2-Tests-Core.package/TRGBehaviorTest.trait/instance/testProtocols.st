tests
testProtocols

	| newBehavior |
	newBehavior := self behaviorClass unnamed.
	
	self assert: newBehavior asYetUnclassifiedProtocolName isSymbol.

	
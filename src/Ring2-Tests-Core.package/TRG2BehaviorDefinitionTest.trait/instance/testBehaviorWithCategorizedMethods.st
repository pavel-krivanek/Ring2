tests
testBehaviorWithCategorizedMethods
	| newBehavior method protocol |
	newBehavior := self behaviorClass named: #SomeClass.
	self assert: newBehavior name equals: #SomeClass.
	self
		assert: (newBehavior hasUnresolvedAll: #(localMethods protocols)).
	newBehavior isTrait
		ifFalse: [ self assert: (newBehavior hasUnresolved: #superclass) ].
	self assert: newBehavior ask methods isEmpty.
	self assert: newBehavior ask protocols isEmpty.
	method := RG2MethodDefinition named: #someMethod parent: newBehavior.
	protocol := RG2ProtocolDefinition named: #someProtocol parent: method.
	method protocol: protocol.
	newBehavior addLocalMethod: method.
	self assert: (newBehavior hasResolved: #protocols).
	self assert: newBehavior ask protocols size equals: 2.
	newBehavior removeAsYetUnclassifiedIfPossible.
	self assert: newBehavior ask protocols size equals: 1.
	newBehavior cleanProtocols.
	self assert: newBehavior ask protocols size equals: 1.
	self
		assert: newBehavior ask protocols first name
		equals: 'as yet unclassified'
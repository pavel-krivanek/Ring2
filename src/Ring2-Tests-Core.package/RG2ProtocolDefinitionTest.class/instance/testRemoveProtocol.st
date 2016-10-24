tests
testRemoveProtocol
	
	| method class protocol  |

	method := RG2MethodDefinition unnamed.
	class := method parent.

	self assert: method protocol name equals: 'as yet unclassified'.	
	self assert: method protocol isRing2Resolved not.	
	
	self assert: class protocols size equals: 1.	
	protocol := (RG2ProtocolDefinition named: 'SomeProtocol' parent: class).
	method protocol: protocol.
	self assert: class protocols size equals: 2.	
	class removeAsYetUnclassifiedIfPossible.
	self assert: class protocols size equals: 1.	
	self assert: class protocols anyOne name equals: 'SomeProtocol'.	
	self assert: method protocol isRing2Resolved.	

	class removeProtocol: protocol.
	self assert: class protocols size equals: 1.	
	self assert: class protocols anyOne name equals: 'as yet unclassified'.	
	self assert: method protocol name equals: 'as yet unclassified'.	
	class removeAsYetUnclassifiedIfPossible.
	self assert: class protocols size equals: 1.	
	self assert: class protocols anyOne name equals: 'as yet unclassified'.	
	self assert: method protocol name equals: 'as yet unclassified'.	
	class removeLocalMethod: method.
	self assert: class protocols size equals: 1.	
	class removeAsYetUnclassifiedIfPossible.
	self assert: class protocols size equals: 0.	
		


tests
testSharedPoolsCollection
	
	| class env sharedPool1 sharedPool2 sharedPool3 |

	class := RG2Class unnamed.
	env := class environment.

	self assert: class sharedPools isEmpty.
	self assert: (class hasUnresolved: #sharedPools).
	
	sharedPool1 := RG2PoolVariable named: #SharedPool1 parent: class.
	class addSharedPool: sharedPool1.
	self assert: class sharedPools size equals: 1.
	self deny: sharedPool1 isClassVariable.
	self assert: sharedPool1 isPoolVariable.
	
	self assert: (class hasResolved: #sharedPools).
	
	sharedPool2 := RG2PoolVariable named: #SharedPool2 parent: class.
	class addSharedPool: sharedPool2.
	self assert: class sharedPools size equals: 2.
	
	sharedPool3 := RG2PoolVariable named: #SharedPool3 parent: class.
	class addSharedPool: sharedPool3.
	self assert: class sharedPools size equals: 3.

	class removeSharedPool: sharedPool3.
	self assert: class sharedPools size equals: 2.

	class cleanSharedPools.
	self assert: class sharedPools isEmpty.
	self assert: (class hasResolved: #sharedPools).

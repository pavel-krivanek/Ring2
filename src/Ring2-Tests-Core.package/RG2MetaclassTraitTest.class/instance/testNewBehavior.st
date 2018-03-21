tests
testNewBehavior
	| newBehavior newSuperclass |
	newBehavior := self behaviorClass unnamed.
	self assert: newBehavior isRing2Resolved.
	self
		assert: (newBehavior hasUnresolvedAll: #(localMethods protocols)).
	newBehavior isTrait
		ifFalse: [ self assert: (newBehavior hasUnresolved: #superclass) ].
	newBehavior name: #SomeClass.
	self assert: newBehavior name equals: #SomeClass.
	self assert: (newBehavior hasResolved: #name).
	self deny: (newBehavior hasUnresolved: #name).
	newBehavior isTrait
		ifFalse: [ self assert: newBehavior superclass isRing2Resolved not ].
	"	self assert: (newBehavior superclass environment == newBehavior environment).
"
	newSuperclass := RG2Class
		named: #MySuperclass
		parent: newBehavior environment.
	self assert: newSuperclass environment == newBehavior environment.
	self
		assert: (newSuperclass hasUnresolvedAll: #(superclass localMethods protocols))
tests
testNewBehavior
	| newBehavior newSuperclass |
	
	newBehavior := self behaviorClass unnamed.
	
	self assert: (newBehavior isRing2Resolved).
	
	self assert: (newBehavior unresolvedProperties includesAll: #(localMethods protocols)).
	newBehavior isTrait ifFalse: [  
		self assert: (newBehavior unresolvedProperties includesAll: #(superclass)).].
	newBehavior name: #SomeClass.
	
	self assert: (newBehavior name = #SomeClass).
	self assert: (newBehavior resolvedProperties includesAll: #(name)).
	self deny: (newBehavior unresolvedProperties includesAll: #(name)).
	
	newBehavior isTrait ifFalse: [  
		self assert: (newBehavior superclass isRing2Resolved not)].
"	self assert: (newBehavior superclass environment == newBehavior environment).
"
	newSuperclass := RG2BehaviorDefinition named: #MySuperclass parent: newBehavior environment.
	self assert: (newSuperclass environment == newBehavior environment).
	self assert: (newSuperclass unresolvedProperties includesAll: #(superclass localMethods protocols))

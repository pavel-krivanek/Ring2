*Ring2-Monticello
asRing2Definition

"	method2 := (Object>>#isRing2Object) asRing2Definition.
	self assert: method2 class equals: RG2Method.	
	self assert: method2 selector equals: #isRing2Object.
	self assert: method2 parent name equals: #Object.

	self deny: (method2 environment == env1)."

	^ self ensureRing2DefinitionIn: RG2Environment new
	

as yet unclassified
innerBindingOf: aSymbol

	((self classVariables collect: #name) includes: aSymbol)
		ifTrue: [ | binding |
			binding := self classVariablesBindings bindingOf: aSymbol.
			^ binding ifNil: [ 
				self classVariablesBindings at: aSymbol put: (self classVariables detect: [:each | each name = aSymbol]). 
				^  self classVariablesBindings bindingOf: aSymbol.]].
	
	self sharedPoolsDo: [:pool | 
		((self environment ask behaviorNamed: pool name) bindingOf: aSymbol) ifNotNil: [:binding | ^binding]].

	((self superclass == self) or: [ self superclass isNil ]) ifFalse: [ ^ self superclass innerBindingOf: aSymbol].	
		
	^ nil
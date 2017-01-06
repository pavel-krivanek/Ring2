compiling
innerBindingOf: aSymbol

	self classVariables detect: [ :each | each name = aSymbol  ] ifFound: [ :found | ^ found ].

	self sharedPoolsDo: [:pool | 
		((self environment ask behaviorNamed: pool name) bindingOf: aSymbol) ifNotNil: [:binding | ^binding]].

	((self superclass == self) or: [ self superclass isNil ]) ifFalse: [ ^ self superclass innerBindingOf: aSymbol].	
		
	^ nil
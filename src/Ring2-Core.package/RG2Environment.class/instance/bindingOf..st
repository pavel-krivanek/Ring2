as yet unclassified
bindingOf: aSymbol
	
	Transcript << 'environment bindingOf: ' << aSymbol asString; cr.

	((self ask globalVariables collect: #name) includes: aSymbol)
		ifTrue: [ | binding |
			binding := self globalVariablesBindings bindingOf: aSymbol.
			^ binding ifNil: [ 
				self globalVariablesBindings at: aSymbol put: (self ask globalVariables detect: [:each | each name = aSymbol]). 
				^  self globalVariablesBindings bindingOf: aSymbol.]].

	(self ask behaviorNamed: aSymbol) ifNotNil: [ 
		^ self ask behaviorsDictionary bindingOf: aSymbol ].
	
		
	^ nil
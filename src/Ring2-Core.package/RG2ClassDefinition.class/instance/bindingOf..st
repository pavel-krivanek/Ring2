as yet unclassified
bindingOf: varName

	| aSymbol |
	aSymbol := varName asSymbol.
	Transcript << 'class ' << self name << ' bindingOf: ' << varName; cr.

	^ (self innerBindingOf: aSymbol) ifNil: [
		 self environment bindingOf: aSymbol ]
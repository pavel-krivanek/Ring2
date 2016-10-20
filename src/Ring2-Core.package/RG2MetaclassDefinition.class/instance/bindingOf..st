as yet unclassified
bindingOf: varName
	
	Transcript << 'metaclass ' << self name << ' bindingOf: ' << varName; cr.


	^ self baseClass bindingOf: varName
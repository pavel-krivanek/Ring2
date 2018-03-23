actions
reverseIn: aRG2Environment

	| originBindings |
	
	originBindings := Dictionary new.

	self changes reverseDo: [ :each | 
		each reverseIn: aRG2Environment withBindings: originBindings ]
actions
reverseIn: aRGEnvironment

	| originBindings |
	
	originBindings := Dictionary new.

	self changes reverseDo: [ :each | 
		each reverseIn: aRGEnvironment withBindings: originBindings ]
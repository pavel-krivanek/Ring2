actions
reverseIn: anRGEnvironment

	| originBindings |
	
	originBindings := Dictionary new.

	self changes reverseDo: [ :each | 
		each reverseIn: anRGEnvironment withBindings: originBindings ]
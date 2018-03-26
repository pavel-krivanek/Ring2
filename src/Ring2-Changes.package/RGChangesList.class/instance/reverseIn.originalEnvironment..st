actions
reverseIn: anRGEnvironment originalEnvironment: originalEnvironment

	| originBindings |
	
	originBindings := Dictionary new.

	self changes reverseDo: [ :each | 
		each reverseIn: anRGEnvironment withBindings: originBindings ]
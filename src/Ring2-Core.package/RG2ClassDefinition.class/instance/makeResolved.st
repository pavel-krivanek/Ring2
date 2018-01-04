resolving
makeResolved

	self resolveName.
	
	super makeResolved.
	
	comment := self comment.
	classVariables := self classVariables.
	package := self package.
	sharedPools := self sharedPools.

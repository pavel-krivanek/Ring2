resolving
makeResolved

	self resolveName.
	
	super makeResolved.
	classTrait := self classTrait.
	comment := self comment.
	package := self package.
	
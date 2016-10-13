initialization
initialize

	super initialize.

	protocol := self unresolvedValue: self defaultProtocol.
	sourceCode := self unresolvedValue: self defaultSourceCode.
	package := self unresolvedValue: self parent package.
	author := self unresolvedValue: self defaultAuthor.
	time := self unresolvedValue: self defaultTime.
	
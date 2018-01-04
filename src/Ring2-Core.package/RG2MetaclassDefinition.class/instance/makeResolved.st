resolving
makeResolved

	"try to set the correct name before resolving of it"
	self resolveName.
	
	super makeResolved.
	
	baseClass := self baseClass.
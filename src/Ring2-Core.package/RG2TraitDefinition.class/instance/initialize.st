initialization
initialize

	super initialize.
	
	"classTrait is set in the superclass"
	comment := self unresolvedValue: self defaultComment.
	category := self unresolvedValue: self defaultCategory.
	package := self unresolvedValue: self defaultPackage.

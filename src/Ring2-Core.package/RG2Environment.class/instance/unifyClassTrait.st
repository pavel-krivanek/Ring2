cleaning
unifyClassTrait

	"set all metaclasses of metaclasses to the same object (Metaclass) "

	| aTrait |

	aTrait := self ensureClassTrait.
	 
	self ask behaviorsDo: [ :each | 
		(each isMetaclassTrait)
			ifTrue: [ each metaclass: aTrait]].

cleaning
unifyTrait

	"set all metaclasses of metaclasses to the same object (Metaclass) "

	| aTrait |

	aTrait := self ensureTrait.
	 
	self ask behaviorsDo: [ :each | 
		(each isTrait)
			ifTrue: [ each metaclass: aTrait]].

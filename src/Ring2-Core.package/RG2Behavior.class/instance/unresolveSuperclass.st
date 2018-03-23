accessing - backend
unresolveSuperclass

	self announceDefinitionChangeDuring: [ 
		self pvtSuperclass: (RG2UnresolvedValue recursive) ].
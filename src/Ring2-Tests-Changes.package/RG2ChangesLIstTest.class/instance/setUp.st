running
setUp

	super setUp.
	
	list := RG2ChangesList new.
	class := RG2Class unresolved.
	change1 := RG2BehaviorAddition for: class.
	change2 := RG2BehaviorNameResolvedChange for: class newName: #SomeClass.
	change3 := RG2BehaviorNameChange for: class oldName: #SomeClass newName: #NewName.
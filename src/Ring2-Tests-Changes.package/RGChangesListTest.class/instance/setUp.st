running
setUp

	super setUp.
	
	list := RGChangesList new.
	class := RGClass unresolved.
	change1 := RGBehaviorAddition for: class.
	change2 := RGBehaviorNameResolvedChange for: class newName: #SomeClass.
	change3 := RGBehaviorNameChange for: class oldName: #SomeClass newName: #NewName.
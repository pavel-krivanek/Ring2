as yet unclassified
ensureMetaclassTraitNamed: aSymbol

	| found newTrait newMetaclassTrait similarMetaclass similarMetaclassName siblingName sibling originalMetaclass |
	
	self assert: (aSymbol endsWith: ' class') not.
	self assert: (aSymbol endsWith: ' classTrait').

	found := self ask behaviorNamedExactlyAs: aSymbol.
	(found notNil and: [ found isMetaclassTrait ]) ifTrue: [ ^ found ].		

	^ found 
		ifNil: [ 
			"trait not found, check if the environment contains already a correspoinding trait"
			siblingName := (aSymbol withoutSuffix: ' classTrait') asSymbol.
			sibling := self ask behaviorNamedExactlyAs: siblingName.
			sibling 
				ifNotNil: [ 
					"resolve and return existing corresponding trait"
					| existing |
					sibling isTrait
						ifTrue: [ 
							existing := sibling classTrait.
							existing name: aSymbol.
							existing propertyNamed: #resolved put: true.
							existing ]
						ifFalse: [ 
							newTrait := sibling pvtAsTrait.
							originalMetaclass := sibling metaclass.
							newMetaclassTrait := originalMetaclass pvtAsMetaclassTrait.
							self ask replaceName: originalMetaclass name with: newMetaclassTrait name.
							sibling metaclass becomeForward: newMetaclassTrait.
							originalMetaclass becomeForward: newMetaclassTrait.
							sibling becomeForward: newTrait.
							sibling classTrait: newMetaclassTrait.
							newMetaclassTrait baseTrait: sibling.
							newMetaclassTrait name: (aSymbol, ' classTrait') asSymbol.
							newMetaclassTrait propertyNamed: #resolved put: true.
							newMetaclassTrait
							]]
				ifNil: [ 
					similarMetaclassName := ((aSymbol withoutSuffix: ' classTrait'), ' class') asSymbol.
					similarMetaclass := self ask behaviorNamed: similarMetaclassName.	
					similarMetaclass 
						ifNotNil: [
							"environment already contains metaclass of the similar name. It was probably 
							created because correct type was not known. Convert it to classTrait"
							| similarClass |
							newMetaclassTrait := similarMetaclass pvtAsMetaclassTrait.
							similarClass := similarMetaclass baseClass.
							newTrait := similarClass pvtAsTrait.
							self ask replaceName: similarMetaclass name with: newMetaclassTrait name.
							similarMetaclass becomeForward: newMetaclassTrait.
							similarClass becomeForward: newTrait.
							similarClass classTrait: similarMetaclass.
							similarClass name: (aSymbol withoutSuffix: ' classTrait') asSymbol.
							similarMetaclass baseTrait: similarClass.
							similarMetaclass ]
						ifNil: [ 
							"we need to create new behavior"
							| newBehavior |
							newBehavior := RG2MetaclassTraitOld named: aSymbol parent: self.
							self addBehavior: newBehavior.
							newBehavior ] ] ]
		ifNotNil: [
			"some non-trait behavior found. We created this trait before as a class because correct behavior type was not known."
			newTrait := found pvtAsTrait.
			originalMetaclass := found metaclass.
			newMetaclassTrait := originalMetaclass pvtAsMetaclassTrait.
			self ask replaceName: originalMetaclass name with: newMetaclassTrait name.
			found becomeForward: newTrait.
			found metaclass becomeForward: newMetaclassTrait.
			originalMetaclass becomeForward: newMetaclassTrait.
			found ].
	
				

unresolved objects
createUnresolvedTraitGroupFor: aRG2BehaviorDefinition 

	| traitStub classTraitStub traitMetaclassStub classTraitMetaclassStub packageStub1  |

	traitStub := aRG2BehaviorDefinition isMeta
		ifFalse: [ aRG2BehaviorDefinition ]
		ifTrue: [ RG2TraitDefinition unresolvedWithParent: self environment ].
	traitStub propertyNamed: #creator put: aRG2BehaviorDefinition.
	traitStub propertyNamed: #role put: #trait.
		
	classTraitStub := aRG2BehaviorDefinition isMeta
		ifFalse: [ RG2MetaclassTraitDefinition unresolvedWithParent: self environment ]
		ifTrue: [ aRG2BehaviorDefinition ].
	classTraitStub propertyNamed: #creator put: aRG2BehaviorDefinition.
	classTraitStub propertyNamed: #role put: #classTrait.

	"Trait"
	traitMetaclassStub := RG2ClassDefinition unresolvedWithParent: self environment.
	self createUnresolvedClassGroupFor: traitMetaclassStub.
	traitMetaclassStub propertyNamed: #creator put: aRG2BehaviorDefinition.
	traitMetaclassStub propertyNamed: #role put: #traitMetaclass.
	
	"ClassTrait"
	classTraitMetaclassStub := RG2ClassDefinition unresolvedWithParent: self environment.
	self createUnresolvedClassGroupFor: classTraitMetaclassStub.
	classTraitMetaclassStub propertyNamed: #creator put: aRG2BehaviorDefinition.
	classTraitMetaclassStub propertyNamed: #role put: #classTraitMetaclass.

	packageStub1 := RG2PackageDefinition unresolvedWithParent: self environment.
	packageStub1 propertyNamed: #creator put: aRG2BehaviorDefinition.
	packageStub1 propertyNamed: #role put: #traitMetaclassPackage.
	packageStub1 pvtAddDefinedBehavior: traitStub.

	traitStub pvtPackage: packageStub1.
	traitStub pvtSuperclass: traitStub.
	traitStub pvtMetaclass: traitMetaclassStub.
	traitStub pvtClassTrait: classTraitStub.

	classTraitStub pvtSuperclass: classTraitStub.
	classTraitStub pvtMetaclass: classTraitMetaclassStub.
	classTraitStub pvtBaseTrait: traitStub.
	
	self environment pvtAddBehavior: traitStub.		
	self environment pvtAddBehavior: classTraitStub.	
	self environment pvtAddBehavior: traitMetaclassStub.
	self environment pvtAddBehavior: classTraitMetaclassStub.
	self environment pvtAddPackage: packageStub1.

	^ 	aRG2BehaviorDefinition isMeta
		ifFalse: [ traitStub ]
		ifTrue: [ classTraitStub ].

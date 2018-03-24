unresolved objects
createUnresolvedTraitGroupFor: aRG2Behavior 

	| traitStub classTraitStub traitMetaclassStub classTraitMetaclassStub packageStub1  |

	traitStub := aRG2Behavior isMeta
		ifFalse: [ aRG2Behavior ]
		ifTrue: [ RG2Trait unresolvedWithParent: self environment ].
	traitStub propertyNamed: #creator put: aRG2Behavior.
	traitStub propertyNamed: #role put: #trait.
		
	classTraitStub := aRG2Behavior isMeta
		ifFalse: [ RG2MetaclassTrait unresolvedWithParent: self environment ]
		ifTrue: [ aRG2Behavior ].
	classTraitStub propertyNamed: #creator put: aRG2Behavior.
	classTraitStub propertyNamed: #role put: #classTrait.

	"Trait"
	traitMetaclassStub := RG2Class unresolvedWithParent: self environment.
	self createUnresolvedClassGroupFor: traitMetaclassStub.
	traitMetaclassStub propertyNamed: #creator put: aRG2Behavior.
	traitMetaclassStub propertyNamed: #role put: #traitMetaclass.
	
	"ClassTrait"
	classTraitMetaclassStub := RG2Class unresolvedWithParent: self environment.
	self createUnresolvedClassGroupFor: classTraitMetaclassStub.
	classTraitMetaclassStub propertyNamed: #creator put: aRG2Behavior.
	classTraitMetaclassStub propertyNamed: #role put: #classTraitMetaclass.

	packageStub1 := RGPackageDefinition unresolvedWithParent: self environment.
	packageStub1 propertyNamed: #creator put: aRG2Behavior.
	packageStub1 propertyNamed: #role put: #traitMetaclassPackage.

	traitStub behaviorStrategy pvtPackage: packageStub1.
	packageStub1 pvtAddDefinedBehavior: traitStub.
	traitStub pvtSuperclass: traitStub.
	traitStub pvtMetaclass: traitMetaclassStub.
	traitStub behaviorStrategy pvtClassTrait: classTraitStub.

	classTraitStub pvtSuperclass: classTraitStub.
	classTraitStub pvtMetaclass: classTraitMetaclassStub.
	classTraitStub behaviorStrategy pvtBaseTrait: traitStub.
	
	self environment pvtAddBehavior: traitStub.		
	self environment pvtAddBehavior: classTraitStub.	
	self environment pvtAddBehavior: traitMetaclassStub.
	self environment pvtAddBehavior: classTraitMetaclassStub.
	self environment pvtAddPackage: packageStub1.

	^ 	aRG2Behavior isMeta
		ifFalse: [ traitStub ]
		ifTrue: [ classTraitStub ].

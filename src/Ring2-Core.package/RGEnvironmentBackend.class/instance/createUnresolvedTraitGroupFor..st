unresolved objects
createUnresolvedTraitGroupFor: aRGBehavior 

	| traitStub classTraitStub traitMetaclassStub classTraitMetaclassStub packageStub1  |

	traitStub := aRGBehavior isMeta
		ifFalse: [ aRGBehavior ]
		ifTrue: [ RGTrait unresolvedWithParent: self environment ].
	traitStub propertyNamed: #creator put: aRGBehavior.
	traitStub propertyNamed: #role put: #trait.
		
	classTraitStub := aRGBehavior isMeta
		ifFalse: [ RGMetaclassTrait unresolvedWithParent: self environment ]
		ifTrue: [ aRGBehavior ].
	classTraitStub propertyNamed: #creator put: aRGBehavior.
	classTraitStub propertyNamed: #role put: #classTrait.

	"Trait"
	traitMetaclassStub := RGClass unresolvedWithParent: self environment.
	self createUnresolvedClassGroupFor: traitMetaclassStub.
	traitMetaclassStub propertyNamed: #creator put: aRGBehavior.
	traitMetaclassStub propertyNamed: #role put: #traitMetaclass.
	
	"ClassTrait"
	classTraitMetaclassStub := RGClass unresolvedWithParent: self environment.
	self createUnresolvedClassGroupFor: classTraitMetaclassStub.
	classTraitMetaclassStub propertyNamed: #creator put: aRGBehavior.
	classTraitMetaclassStub propertyNamed: #role put: #classTraitMetaclass.

	packageStub1 := RGPackageDefinition unresolvedWithParent: self environment.
	packageStub1 propertyNamed: #creator put: aRGBehavior.
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

	^ 	aRGBehavior isMeta
		ifFalse: [ traitStub ]
		ifTrue: [ classTraitStub ].

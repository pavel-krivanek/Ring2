instance creation
newStrategyFor: anRGEnvironment

	^ (anRGEnvironment version <= 6)
		ifTrue: [ RGMetaclassTraitStrategy basicNew ]
		ifFalse: [ RGMetaclassTraitV2Strategy basicNew ]

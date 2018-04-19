instance creation
newStrategyFor: anRGEnvironment

	^ (anRGEnvironment version <= 6)
		ifTrue: [ RGTraitStrategy basicNew ]
		ifFalse: [ RGTraitV2Strategy basicNew ]
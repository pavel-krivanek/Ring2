merging
canMergeSimplyWith: aRG2Definition

	^ (self resolvedProperties intersection: aRG2Definition resolvedProperties) isEmpty.
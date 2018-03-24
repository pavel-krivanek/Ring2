merging
canMergeSimplyWith: anRGObject

	^ (self resolvedProperties intersection: anRGObject resolvedProperties) isEmpty.
*Ring2-Experiments
canMergeSimplyWithoutName: anRGObject

	| intersection |
	
	intersection := self resolvedProperties intersection: anRGObject resolvedProperties.
	^ intersection isEmpty or: [intersection = #(name)]
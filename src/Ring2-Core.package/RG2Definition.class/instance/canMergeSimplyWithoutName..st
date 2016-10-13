merging
canMergeSimplyWithoutName: aRG2Definition

	| intersection |
	
	intersection := self resolvedProperties intersection: aRG2Definition resolvedProperties.
	^ intersection isEmpty or: [intersection = #(name)]
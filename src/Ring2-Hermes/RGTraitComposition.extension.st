Extension { #name : #RGTraitComposition }

{ #category : #'*Ring2-Hermes' }
RGTraitComposition >> asExportedLiteral [
	
	^ HETraitCompositionExporter export: self traitCompositionString
]

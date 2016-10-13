tests
testReadOnlyErrors

	| selectors backend |
	
	selectors := #(#addAlias:to: #addBehavior:to: #addClassVariable:to: #addDefinedBehavior:to: #addExclusion:to: #addExtensionMethod:to: #addGlobalVariable:to: #addInstanceVariable:to: #addLocalMethod:to: #addPackage:to: #addProtocol:to: #addSharedPool:to: #addSlot:to: #addTransformation:to: #cleanAliasesFor: #cleanBehaviorsFor: #cleanClassVariablesFor: #cleanDefinedBehaviorsFor: #cleanExclusionsFor: #cleanExtensionMethodsFor: #cleanGlobalVariablesFor: #cleanInstanceVariablesFor: #cleanLocalMethodsFor: #cleanPackagesFor: #cleanProtocolsFor: #cleanSharedPoolsFor: #cleanSlotsFor: #cleanTransformationsFor: #createNewUnresolvedClass #createNewUnresolvedMetaclassFor: #createNewUnresolvedMetaclassMetaclassFor: #readOnlyError #removeAlias:from: #removeBehavior:from: #removeClassVariable:from: #removeDefinedBehavior:from: #removeExclusion:from: #removeExtensionMethod:from: #removeGlobalVariable:from: #removeInstanceVariable:from: #removeLocalMethod:from: #removePackage:from: #removeProtocol:from: #removeSharedPool:from: #removeSlot:from: #removeTransformation:from: #setBaseClassFor:to: #setCategoryFor:to: #setClassCommentAuthorFor:to: #setClassCommentContentFor:to: #setClassCommentTimeFor:to: #setClassTraitFor:to: #setCommentFor:to: #setExpressionFor:to: #setLayoutFor:to: #setMetaClassFor:to: #setMethodPackageFor:to: #setMethodStampFor:to: #setNameFor:to: #setPackageFor:to: #setProtocolFor:to: #setSourceCodeFor:to: #setSubjectFor:to: #setSuperclassFor:to: #setTraitCategoryFor:to: #setTraitCommentFor:to: #setTraitPackageFor:to:).
	
	backend := self backendClass new.
	
	selectors do: [:selector |
		self should: [backend perform: selector withEnoughArguments: #() ] raise: Error]

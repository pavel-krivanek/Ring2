Extension { #name : #RGChangesResolver }

{ #category : #'*Ring2-Store' }
RGChangesResolver >> visitChangesList: anRGBehaviorAddition [
]

{ #category : #'*Ring2-Store' }
RGChangesResolver >> visitMethodNameChange: anRGBehaviorNameResolvedChange [

	^ self visitMethodChange: anRGBehaviorNameResolvedChange
]

as yet unclassified
canBeJoined

	"can join if is not resolved or has resolved only the name"

	^ self isRing2Resolved not or: [ self resolvedProperties = #(#name) ]
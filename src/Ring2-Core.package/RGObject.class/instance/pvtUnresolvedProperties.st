private - backend interface
pvtUnresolvedProperties

	^ self pvtResolvableProperties select: [:each | each value isRing2Resolved not ] thenCollect: #key
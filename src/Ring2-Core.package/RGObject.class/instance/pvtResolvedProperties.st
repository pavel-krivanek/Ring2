private - backend interface
pvtResolvedProperties

	^ self pvtResolvableProperties select: [:each | each value isRing2Resolved ] thenCollect: #key
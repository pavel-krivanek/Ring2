testing types
definition
	^String streamContents: [:stream |
		stream
			nextPutAll: self baseTrait name;
			nextPutAll: ' clasTrait';
			crtab;
			nextPutAll: 'uses: ';
			nextPutAll: self traitCompositionString]
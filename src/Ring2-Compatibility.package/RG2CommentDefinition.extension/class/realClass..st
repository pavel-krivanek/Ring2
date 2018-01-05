*Ring2-Compatibility
realClass: aClass
	"Creates a ring comment definition from a Smalltalk class"
	
	| env aDefinition |

	env := RG2Environment new.
	aDefinition := aClass asRing2MinimalCommentDefinitionIn: env.
	aDefinition name: 'Comment'.
	env backend: (RG2ReadOnlyImageBackend for: env).
	^ aDefinition
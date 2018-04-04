actions
applyIn: anRGEnvironment

	| resolved |
	resolved := self resolveOrigins.
	self apply: resolved in: anRGEnvironment.

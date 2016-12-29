accessing - backend
tags

	^ { self category withoutPrefix: (self package name, '-') }
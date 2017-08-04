*Calypso-Ring2
browse

	 | clyEnv clyNavEnv browser |

	clyEnv := ClyRing2Environment new.
	clyEnv environment: self.

	clyNavEnv := (ClySystemNavigationEnvironment over: clyEnv)
	    attachToSystem.

	browser := ClySystemBrowser new 
	        showEnvironment: clyNavEnv.
	browser addPlugin: ClyStandardBrowserPlugin new.

	^ browser open.
*Calypso-Ring2
browse

	 | clyEnv clyNavEnv |

	clyEnv := ClyRing2Environment new.
	clyEnv environment: self.

	clyNavEnv := (ClyNavigationEnvironment over: clyEnv)
		addPlugin: ClyDefaultSystemEnvironmentPlugin new;
	    attachToSystem.

	^ClyFullBrowser new 
		navigationEnvironment: clyNavEnv;
		addPlugin: ClyStandardBrowserPlugin new;
		open
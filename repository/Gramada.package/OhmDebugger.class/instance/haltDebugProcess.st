debugging callbacks
haltDebugProcess 

	self controlMutex signal.
	self debugMutex wait.
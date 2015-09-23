debugging
proceed

	self debugProcess isTerminated
		ifFalse: [self debugMutex signal.
				self controlMutex wait.]
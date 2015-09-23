debugging
debug

	self 
		installLayer;
		debugProcess: [self debugMutex wait. 
						#ohmDebugging withLayerDo: self codeUnderDebug. 
						self uninstallLayer.
						self controlMutex signal] fork.
	self
		debugProcess environmentAt: #OhmDebuggerInstance put: self.
	self
		haltBeforeCondition: [:d | d haltBeforeCondition: [:d2 | false]. true ];
		proceed
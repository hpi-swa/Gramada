installation
installAndOpenGramada 

	WorldState addDeferredUIMessage: [
		OhmGrammarSmalltalkProxy initialize.
		
		Project current showWorldMainDockingBar: false.
		VivideLight useVivideDebugger: false.
		ViScriptEditor showHints: false.
		Preferences disable: #fastDragWindowForMorphic.
		Preferences disable: #showSharedFlaps.
		  
		VivideLight prepareSqueak.
		VivideLight open.
		
		self installScriptsAndOpenProfile.].

	AnimMorphicProject new enter: true.
initialize-release
finalize

	[self uninstallLayer.
       self debugProcess terminate]
		on: Exception do: [:e | e return]
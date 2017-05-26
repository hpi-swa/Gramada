installation
installScriptsAndOpenProfile 
  
	OhmGrammarSmalltalkProxy initialize.
	self merge.
	VivideLight openProfileByLabel: 'Gramada'.  

	self scriptsToBookmark do: [:scriptName | 
		VivideLight active profile addScriptAsBookmark: scriptName asScript].

	"To ensure that the bookmarks are displayed"
	VivideLight openProfileByLabel: 'Gramada'. 
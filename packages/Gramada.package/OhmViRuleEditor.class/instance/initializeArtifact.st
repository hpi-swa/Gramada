initialization
initializeArtifact

	self artifact: OhmViRuleTextualEdit new.
	self artifact
		scrollingMode: #never;
		autoCreateArtifacts: true;
		outerBorderWidth: 0.
	self artifact textMorph styler: OhmRuleStyler new.

	self connect: self artifact signal: #editingFinished: toSelector: #ruleSourceChangeFinished.

	OhmChangeNotifier uniqueInstance
		notify: self ofOhmChangesOfItem: OhmChangeNotifier ruleKind change: OhmModifiedRuleEvent changeKind using: #updateSourceFromChangeEvent:.
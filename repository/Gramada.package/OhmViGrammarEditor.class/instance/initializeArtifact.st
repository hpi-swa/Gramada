as yet unclassified
initializeArtifact

	self artifact: OhmViGrammarTextualEdit new.
	self artifact
		scrollingMode: #never;
		autoCreateArtifacts: true;
		outerBorderWidth: 0.
	self artifact textMorph styler: OhmRuleStyler new.

	self connect: self artifact signal: #editingFinished: toSelector: #grammarDefinitionChangeFinished.

	OhmChangeNotifier uniqueInstance
		notify: self ofOhmChangesOfItem: OhmChangeNotifier ruleKind change: OhmModifiedGrammarEvent changeKind using: #updateSourceFromChangeEvent:.
as yet unclassified
addArtifact

	| editor placeholderRule |
	
	placeholderRule := OhmRule newNamed: 'newRule' body: (OhmPExprFail new).
	placeholderRule boundGrammar: self ohmRule boundGrammar.
	
	editor := OhmViRuleEditor new
		object: placeholderRule;
		yourself.
		
	self artifactCreated: editor. 
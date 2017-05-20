as yet unclassified
actionsViewOnRule

	^ self actions collect: [:a | OhmActionEditorData new
	rule: self rule;
	action: a;
	yourself]
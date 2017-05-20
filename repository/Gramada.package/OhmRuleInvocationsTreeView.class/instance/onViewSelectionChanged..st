as yet unclassified
onViewSelectionChanged: selectedObjects
	|selectedInvocations|
	selectedInvocations := self viModel objects 
		copyFrom: 1 
		to: (self viModel objects findFirst: [:o | selectedObjects includes: o]).

	self selectionChanged: (self nodesForObjects: selectedInvocations)
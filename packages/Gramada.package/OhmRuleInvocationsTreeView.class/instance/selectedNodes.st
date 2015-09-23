accessing
selectedNodes
	"Return a list of all nodes that are currently in <selected> state."
	self halt.
	^ self nodesForObjects: { self ruleInvocationsViewer selectedInvocation }
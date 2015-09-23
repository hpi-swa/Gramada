layout
invocationSelected: invocation withParent: parent

	self selectedInvocation: invocation.
	self highlightCurrentNode.
	(self onSelectionCallbacks at: invocation) value: invocation.
	self selectionChanged: {invocation }.
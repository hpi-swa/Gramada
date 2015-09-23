layout
highlightCurrentNode

	| currentNode |
	self invocations do: [:invocation | 
		currentNode := self nodeMorphs 
							at: invocation node.
		currentNode textColor: Color black].
		self selectedInvocation ifNotNil: [
			(self nodeMorphs 
				at: self selectedInvocation node)
			textColor: Color red.]
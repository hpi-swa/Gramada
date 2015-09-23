layout
prepareWithInvocations: newInvocations

	| firstInvocation |
	
	newInvocations ifEmpty: [^ self].
	self invocations: newInvocations.
	self nodeMorphs: Dictionary new.
	self rootNodeMorph: nil.
	
	self invocations ifNotEmpty: [
		firstInvocation := self invocations first.
		#ohmDebugging withLayerDo: [ | currentNode|
			currentNode := firstInvocation node.
			self rootNodeMorph: (self addNodeMorphFor: currentNode).
			(currentNode innerNodesAt: firstInvocation state)
				do: [:n | self addNodeMorphFor: n asChildOf: currentNode].
			(2 to: self invocations size) do: [:index | |invocation|
				invocation := self invocations at: index.
				(invocation node innerNodesAt: invocation state)
					do: [:n | self addNodeMorphFor: n asChildOf: invocation node]]].
		self rootNodeMorph position: self position + self rootMorphInset.
		self rootNodeMorph alignSubmorphs.
		
		self connectMorphs: newInvocations. ].

	self 
		adjustExtent;
		highlightActiveInvocations;
	"We know that the last one is the active invocation,
	 as we have updated all invocations from the debugger --pre"
		selectedInvocation: self invocations last;
		highlightCurrentNode.
	
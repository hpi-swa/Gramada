initialization
initializeInvocationsViewer 

	| callbackAssociations |

	self ruleInvocationsViewer:
		OhmRuleInvocationsMorph new.

	self ruleInvocationsViewer 
		prepareWithInvocations: self model objects.

	callbackAssociations := self model allNodes collect: [ :c | 
			(c includesKey: #object) ifTrue: [
				c object -> (c at: #selectedInvocation) ]].
	callbackAssociations remove: nil.
	self ruleInvocationsViewer callbacksForSelectedInvocation: 
		(Dictionary newFrom: callbackAssociations).

	self 
		connect: self ruleInvocationsViewer
		signal: #selectionChanged:
		toSelector: #yield:.
	self model nodes ifNotEmpty: [ 
		self yield: {self model nodes last} ].
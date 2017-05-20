signals
connectMorphs: ruleInvocations

	ruleInvocations withIndexDo: [:invocation :index | 
		| pattern |
		index > 1
			ifTrue: [ pattern := {#= . invocation . #= . 
						ruleInvocations at: index - 1}]
			ifFalse: [ pattern := {#= . invocation . #= . invocation}].
		self
			connect: (self nodeMorphs at: invocation node)
			signal: #nodeSelected
			toSelector: #invocationSelected:withParent:
			pattern: pattern ].
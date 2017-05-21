definitions
def1f2ec0d33b18064095f72d52b219a8cc
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: (in gather: [:debugger | debugger ruleInvocationStack collect: [:invocation | 
	{ #object -> invocation.
  		#selectedInvocation -> [[:selectedInvocation | debugger selectedInvocation: selectedInvocation]]}
]])]).
(#class -> ViQueryStepDefinition).
(#id -> #'1f2ec0d3-3b18-0640-95f7-2d52b219a8cc').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '27 May 2015 6:09:54 pm')})).
(#sourceCode -> '[:in :out | out addAll: (in gather: [:debugger | debugger ruleInvocationStack collect: [:invocation | 
	{ #object -> invocation.
  		#selectedInvocation -> [[:selectedInvocation | debugger selectedInvocation: selectedInvocation]]}
]])]')})
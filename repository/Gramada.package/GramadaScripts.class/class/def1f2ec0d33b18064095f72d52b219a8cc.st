definitions
def1f2ec0d33b18064095f72d52b219a8cc
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'27 May 2015 6:09:54 pm'); yourself)); add: (#id->#'1f2ec0d3-3b18-0640-95f7-2d52b219a8cc'); add: (#block->[:in :out | out addAll: (in gather: [:debugger | debugger ruleInvocationStack collect: [:invocation | 
	{ #object -> invocation.
  		#selectedInvocation -> [[:selectedInvocation | debugger selectedInvocation: selectedInvocation]]}
]])]); add: (#sourceCode->'[:in :out | out addAll: (in gather: [:debugger | debugger ruleInvocationStack collect: [:invocation | 
	{ #object -> invocation.
  		#selectedInvocation -> [[:selectedInvocation | debugger selectedInvocation: selectedInvocation]]}
]])]'); yourself)
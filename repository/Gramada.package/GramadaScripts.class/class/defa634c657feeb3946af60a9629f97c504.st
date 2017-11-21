definitions
defa634c657feeb3946af60a9629f97c504
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:scripts | scripts
		reject: [:script | script valueOfProperty: #isNew ifAbsent: false]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'a634c657-feeb-3946-af60-a9629f97c504').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '21 November 2017 9:34:46 am')})).
(#sourceCode -> '[:in :out | out addAll: ([:scripts | scripts
		reject: [:script | script valueOfProperty: #isNew ifAbsent: false]] value: in)]')})
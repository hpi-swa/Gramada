definitions
def7e9d16d47549f441bf3d74fbe6115750
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:q1 :q2 | (q1 valueOfProperty: #priority ifAbsent: [9999]) <= (q2 valueOfProperty: #priority ifAbsent: [9999])]).
(#class -> ViQueryMapDefinition).
(#id -> #'7e9d16d4-7549-f441-bf3d-74fbe6115750').
(#inputKind -> ViQueryStep).
(#mapType -> #twoArgs).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '10 December 2014 10:17:26 am')})).
(#sourceCode -> '[:q1 :q2 | (q1 valueOfProperty: #priority ifAbsent: [9999]) <= (q2 valueOfProperty: #priority ifAbsent: [9999])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})
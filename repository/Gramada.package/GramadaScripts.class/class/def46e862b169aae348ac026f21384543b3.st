definitions
def46e862b169aae348ac026f21384543b3
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objects | objects
	ifEmpty: [ViProfile active organization snippetDefinitions select: [:def | def inputKind == UndefinedObject]]
	ifNotEmpty: [:objs | 
		(ViQueryStepDefinition collectBaseClassesForContext: objs) in: [:baseClasses |
			ViProfile active organization snippetDefinitions select: [:def |
				"def receiverIsCollection not | (someObjects size > 1)" true
					and: [baseClasses includes: def inputKind]]]]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'46e862b1-69aa-e348-ac02-6f21384543b3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '8 June 2015 5:17:29 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:objects | objects
	ifEmpty: [ViProfile active organization snippetDefinitions select: [:def | def inputKind == UndefinedObject]]
	ifNotEmpty: [:objs | 
		(ViQueryStepDefinition collectBaseClassesForContext: objs) in: [:baseClasses |
			ViProfile active organization snippetDefinitions select: [:def |
				"def receiverIsCollection not | (someObjects size > 1)" true
					and: [baseClasses includes: def inputKind]]]]] value: in)]')})
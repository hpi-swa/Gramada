definitions
def284bed53cf55e9439f0d2c9aa782b9d7
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'9 June 2015 10:03:06 am'); yourself)); add: (#id->#'284bed53-cf55-e943-9f0d-2c9aa782b9d7'); add: (#block->[:in :out | (
	[:objects | objects collect: [:group | {{#separator. {{('<font size="8" color="#AAAAAA">' , 
			(('Invocation: ' , group first node debugNodeString) , 
			' (' , group first hash , ')') ,
			 '</font>') asHtmlText}}}. group}]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:group | {{#separator. {{(''<font size="8" color="#AAAAAA">'' , 
			((''Invocation: '' , group first node debugNodeString) , 
			'' ('' , group first hash , '')'') ,
			 ''</font>'') asHtmlText}}}. group}]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)
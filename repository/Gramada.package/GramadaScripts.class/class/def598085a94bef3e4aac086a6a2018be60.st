definitions
def598085a94bef3e4aac086a6a2018be60
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:object | 
	| text |
	object failed
		ifTrue: [ text := 'Failures: ' , object failure state inputStream contentStream]
		ifFalse: [ text := 'Success: ' , object cst interval contents].
 { #text -> text }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'598085a9-4bef-3e4a-ac08-6a6a2018be60').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'7b8bb990-98c3-8242-8cb2-bbc42a4224aa').
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '21 May 2017 5:59:38 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:object | 
	| text |
	object failed
		ifTrue: [ text := ''Failures: '' , object failure state inputStream contentStream]
		ifFalse: [ text := ''Success: '' , object cst interval contents].
 { #text -> text }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})
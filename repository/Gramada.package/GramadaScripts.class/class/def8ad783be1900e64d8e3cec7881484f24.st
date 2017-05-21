definitions
def8ad783be1900e64d8e3cec7881484f24
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:query | {
	#icon -> (query nextIcon
		ifNil: [ViIcons blankIcon]).
	#text -> (query nextLabel
		ifNil: [
			query isScript ifTrue: [ViTextStyler new styledTextFor: query sourceCodeShort asText] ifFalse: [
			query definition
			ifNotNil: [:def |
				ViTextStyler new styledTextFor: def sourceCode asText]]])}]).
(#class -> ViQueryMapDefinition).
(#id -> #'8ad783be-1900-e64d-8e3c-ec7881484f24').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '10 December 2014 10:17:08 am')})).
(#sourceCode -> '[:query | {
	#icon -> (query nextIcon
		ifNil: [ViIcons blankIcon]).
	#text -> (query nextLabel
		ifNil: [
			query isScript ifTrue: [ViTextStyler new styledTextFor: query sourceCodeShort asText] ifFalse: [
			query definition
			ifNotNil: [:def |
				ViTextStyler new styledTextFor: def sourceCode asText]]])}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})
definitions
defb0fffbca30975b448c4f0ec8eb682a21
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:cs | {#text -> (ChangeSet current = cs ifTrue: [('<b>', cs name, '</b>') asHtmlText] ifFalse: [cs name])}]).
(#class -> ViQueryMapDefinition).
(#id -> #'b0fffbca-3097-5b44-8c4f-0ec8eb682a21').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '5 June 2014 4:50:14 pm')})).
(#sourceCode -> '[:cs | {#text -> (ChangeSet current = cs ifTrue: [(''<b>'', cs name, ''</b>'') asHtmlText] ifFalse: [cs name])}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})
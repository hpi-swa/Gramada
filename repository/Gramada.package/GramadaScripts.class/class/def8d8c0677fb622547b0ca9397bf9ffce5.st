definitions
def8d8c0677fb622547b0ca9397bf9ffce5
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | {
	#text -> (ViLabelService doObject: obj).
	#icon -> (ViIconService doObject: obj).
	#color -> (ViColorService doObject: obj)}]).
(#class -> ViQueryMapDefinition).
(#id -> #'8d8c0677-fb62-2547-b0ca-9397bf9ffce5').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:obj | {
	#text -> (ViLabelService doObject: obj).
	#icon -> (ViIconService doObject: obj).
	#color -> (ViColorService doObject: obj)}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})
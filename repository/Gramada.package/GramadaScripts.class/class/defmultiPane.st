definitions
defmultiPane
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:query :view :environment | "DEPRECATED."
	ViMultiPaneView new]).
(#class -> ViQueryViewDefinition).
(#id -> #multiPane).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 January 2014 5:08:04 pm')})).
(#sourceCode -> '[:query :view :environment | "DEPRECATED."
	ViMultiPaneView new]')})
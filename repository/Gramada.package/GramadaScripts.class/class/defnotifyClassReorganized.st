definitions
defnotifyClassReorganized
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:model | SystemChangeNotifier uniqueInstance
	notify: model ofSystemChangesOfItem: AbstractEvent classKind
	change: ReorganizedEvent changeKind using: #refresh:]).
(#class -> ViQueryUpdateDefinition).
(#id -> #notifyClassReorganized).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 September 2013 9:31:23 pm')})).
(#sourceCode -> '[:model | SystemChangeNotifier uniqueInstance
	notify: model ofSystemChangesOfItem: AbstractEvent classKind
	change: ReorganizedEvent changeKind using: #refresh:]')})
definitions
defnotifyChangedMethods
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:model | SystemChangeNotifier uniqueInstance
	notify: model ofSystemChangesOfItem: AbstractEvent methodKind using: #refresh:.
	"Check: evt itemClass == model object?"]).
(#class -> ViQueryUpdateDefinition).
(#id -> #notifyChangedMethods).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 September 2013 9:02:09 pm')})).
(#sourceCode -> '[:model | SystemChangeNotifier uniqueInstance
	notify: model ofSystemChangesOfItem: AbstractEvent methodKind using: #refresh:.
	"Check: evt itemClass == model object?"]')})
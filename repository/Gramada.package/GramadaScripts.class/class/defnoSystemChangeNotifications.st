definitions
defnoSystemChangeNotifications
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:model | SystemChangeNotifier uniqueInstance
	noMoreNotificationsFor: model]).
(#class -> ViQueryUpdateDefinition).
(#id -> #noSystemChangeNotifications).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 September 2013 6:12:46 pm')})).
(#sourceCode -> '[:model | SystemChangeNotifier uniqueInstance
	noMoreNotificationsFor: model]')})
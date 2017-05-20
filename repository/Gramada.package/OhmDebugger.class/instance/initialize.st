initialize-release
initialize

	self haltBeforeCondition: [:d | false].
	self haltAfterCondition: [:d | false].
	self ruleInvocationStack: OrderedCollection new.
	self debugMutex: Semaphore new.
	self controlMutex: Semaphore new.
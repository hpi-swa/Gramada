as yet unclassified
object: anObject

	self actionData: anObject.
	self artifact actionData: anObject.
	^ super object: self actionData action.
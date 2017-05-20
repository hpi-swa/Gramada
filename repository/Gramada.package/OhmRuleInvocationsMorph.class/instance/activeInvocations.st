accessing
activeInvocations

	^ self invocations copyFrom: 1 to: (invocations indexOf: self selectedInvocation)
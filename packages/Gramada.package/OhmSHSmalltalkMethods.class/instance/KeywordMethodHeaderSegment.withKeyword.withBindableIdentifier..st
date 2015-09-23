as yet unclassified
KeywordMethodHeaderSegment: aNode withKeyword: keyword withBindableIdentifier: bindableIdentifier 

	^ { self rangeFrom: keyword type: #patternKeyword . self rangeFrom: bindableIdentifier type: #methodArg }
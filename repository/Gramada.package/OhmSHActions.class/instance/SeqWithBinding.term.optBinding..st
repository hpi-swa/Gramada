as yet unclassified
SeqWithBinding: aNode term: term optBinding: binding

	^ {SHRange
		start: term interval start
		end: term interval end
		type: #patternKeyword } , (self value: binding)
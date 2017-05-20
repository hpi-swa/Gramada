nil
AltRec: aNode withTerm: term separator: sep moreAlt: recAlt optBinding: binding

	^ binding interval contents
		ifEmpty: [ (self value: term) , (self value: recAlt) ]
		ifNotEmpty: [ {SHRange 
			start: term interval start 
			end: recAlt interval end 
			type: #comment}  , (self value: binding)]
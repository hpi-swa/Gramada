as yet unclassified
stringLiteral: aNode withPrimitive: primitive withManyAlts: manyAlts withPrimitive: primitive1 
  ^ {SHRange 
		start: aNode interval start 
		end: aNode interval end 
		type: #string }
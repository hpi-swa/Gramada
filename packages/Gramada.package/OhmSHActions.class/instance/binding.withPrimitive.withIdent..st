as yet unclassified
binding: aNode withPrimitive: primitive withIdent: ident 
  ^ { SHRange
		start: aNode interval start
		end: aNode interval end
		type: #tempVar }